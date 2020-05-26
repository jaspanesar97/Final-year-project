//  powerlifting
//
// 167682

// Increase load after each TrainingSession - linear progression

import UIKit

public class LinProg:Method {
 
    
    
    private let warmups: Warmup
    private let workSets: Int
    private let workReps: Int

    private var modifiedOn = Date.distantPast
    private var TrainingSessionName: String = ""
    private var movementName: String = ""
    private var history: [Result] = []
    private var sets: [Set] = []
    private var setIndex = 0
    private var afterMovement: String?
    
    
    private func doNext() {
        setIndex += 1
        modifiedOn = Date()
        state = .underway
        frontend.saveMovement(movementName)
    }
    
    private func doComplete(_ missed: Bool) {
        modifiedOn = Date()
        state = .finished
        if case let .right(movement) = findMovement(movementName) {
            movement.completed[TrainingSessionName] = Date()
        }
        
        addResult(missed)
        handleIncrease(missed)
        frontend.saveMovement(movementName)
    }
    
    private func handleIncrease(_ missed: Bool) {
        switch findVariableLoadSetting(movementName) {
        case .right(let setting):
            let load = setting.load
            
            if !missed {
                let w = Load(load, setting.equipment)
                setting.changeLoad(w.nextLoad(), byUser: false)
                setting.stalls = 0
                
            } else {
                setting.sameLoad()
                setting.stalls += 1
                
                if setting.stalls >= 2 {
                    let info = Load(0.9*setting.load, setting.equipment).closest(below: setting.load)
                    setting.changeLoad(info.load, byUser: false)
                    setting.stalls = 0
                }
            }

        case .left(let err):
            state = .error(err)
        }
    }
    
    private func addResult(_ missed: Bool) {
        let load = sets.last!.load
        let numSets = sets.reduce(0) {(sum, set) -> Int in sum + (set.warmup ? 0 : 1)}
        let result = Result(numSets, sets.last!.numReps, missed, load)
        history.append(result)
    }
    
    private func buildSets(_ setting: VariableLoadSetting) {
        let load = setting.load
        
        sets = []
        let warmupSets = warmups.computeWarmups(setting.equipment, workingSetLoad: load)
        for (reps, setIndex, percent, warmupLoad) in warmupSets {
            sets.append(Set(setting.equipment, phase: setIndex, phaseCount: warmupSets.count, numReps: reps, percent: percent, warmupLoad: warmupLoad, workingSetLoad: load))
        }
        
        for i in 0..<workSets {
            sets.append(Set(setting.equipment, phase: i+1, phaseCount: workSets, numReps: workReps, workingSetLoad: load))
        }
    }
    
    struct Set: Storable {
        let workingSetText: String
        let percentOfText: String   
        let numReps: Int
        let load: Load.Info
        let warmup: Bool
        
        init(_ equipment: Equipment, phase: Int, phaseCount: Int, numReps: Int, percent: Double, warmupLoad: Load.Info, workingSetLoad: Double) {
            self.workingSetText = "Warmup \(phase) of \(phaseCount)"
            self.load = warmupLoad
            self.numReps = numReps
            self.warmup = true

            let info = Load(workingSetLoad, equipment).closest()
            let p = String(format: "%.0f", 100.0*percent)
            self.percentOfText = "\(p)% of \(info.text)"
        }
        
        init(_ equipment: Equipment, phase: Int, phaseCount: Int, numReps: Int, workingSetLoad: Double) {
            self.workingSetText = "Workset \(phase) of \(phaseCount)"
            self.percentOfText = ""
            self.load = Load(workingSetLoad, equipment).closest()
            self.numReps = numReps
            self.warmup = false
        }

        init(from store: Store) {
            self.workingSetText = store.getStr("workingSetText")
            self.percentOfText = store.getStr("percentOfText", ifMissing: "")
            self.numReps = store.getInt("numReps")
            self.load = store.getObj("load")
            self.warmup = store.getBool("warmup")
        }
        
        func save(_ store: Store) {
            store.addStr("workingSetText", workingSetText)
            store.addStr("percentOfText", percentOfText)
            store.addInt("numReps", numReps)
            store.addObj("load", load)
            store.addBool("warmup", warmup)
        }
    }
    
    class Result: LoadResult {
        init(_ numSets: Int, _ numReps: Int, _ missed: Bool, _ load: Load.Info) {
            self.numSets = numSets
            self.numReps = numReps
            
            let workingSetText = "\(load.text) \(numSets)x\(numReps)"
            super.init(workingSetText, load.load, primary: true, missed: missed)
        }

        required init(from store: Store) {
            self.numSets = store.getInt("numSets", ifMissing: 0)
            self.numReps = store.getInt("numReps", ifMissing: 0)
            super.init(from: store)
        }
        
        public override func save(_ store: Store) {
            super.save(store)
            store.addInt("numSets", numSets)
            store.addInt("numReps", numReps)
        }
        
        internal override func updatedLoad(_ newLoad: Load.Info) {
            workingSetText = "\(newLoad.text) \(numSets)x\(numReps)"
        }
        
        let numSets: Int
        let numReps: Int
    }
    
    init(_ name: String, _ warmups: Warmup, workSets: Int, workReps: Int, afterMovement: String? = nil) {
        self.methodName = name
        self.typeName = "LinearMethod"
        self.warmups = warmups
        self.workSets = workSets
        self.workReps = workReps
        self.afterMovement = afterMovement
    }
    
    public func errors() -> [String] {
        var problems: [String] = []
        
        problems += warmups.errors()
        
        if workSets < 1 {
            problems += ["method \(methodName) workSets is less than 1"]
        }
        if workReps < 1 {
            problems += ["method \(methodName) workReps is less than 1"]
        }
        
        return problems
    }
    
    public func shouldSync(_ inMethod: Method) -> Bool {
        if let savedMethod = inMethod as? LinProg {
            return typeName == savedMethod.typeName &&
                methodName == savedMethod.methodName &&
                warmups == savedMethod.warmups &&
                workSets == savedMethod.workSets &&
                workReps == savedMethod.workReps &&
                afterMovement == savedMethod.afterMovement
        } else {
            return false
        }
    }

    public required init(from store: Store) {
        self.methodName = store.getStr("name")
        self.typeName = "LinearMethod"
        self.workSets = store.getInt("workSets")
        self.workReps = store.getInt("workReps")
        
        if !store.hasKey("warmups") {
            let firstWarmup = store.getDbl("firstWarmup")
            let warmupReps = store.getIntArray("warmupReps")
            self.warmups = Warmup(noPlates: 2, firstPercent: firstWarmup, lastPercent: 0.9, reps: warmupReps)
        } else {
            self.warmups = store.getObj("warmups")
        }

        self.TrainingSessionName = store.getStr("TrainingSessionName", ifMissing: "unknown")
        self.movementName = store.getStr("movementName")
        self.history = store.getObjArray("history")
        self.sets = store.getObjArray("sets")
        self.setIndex = store.getInt("setIndex")
        self.state = store.getObj("state", ifMissing: .waiting)
        self.modifiedOn = store.getDate("modifiedOn", ifMissing: Date.distantPast)
        
        if !store.hasKey("afterMovement") {
            self.afterMovement = nil
        } else {
            self.afterMovement = store.getStr("afterMovement")
        }

        switch state {
        case .waiting:
            break
        default:
            let calendar = Calendar.current
            if !calendar.isDate(modifiedOn, inSameDayAs: Date()) {
                sets = []
                setIndex = 0
                state = .waiting
            }
        }
    }

    public func save(_ store: Store) {
        store.addStr("name", methodName)
        store.addObj("warmups", warmups)
        store.addInt("workSets", workSets)
        store.addInt("workReps", workReps)
        
        store.addStr("TrainingSessionName", TrainingSessionName)
        store.addStr("movementName", movementName)
        store.addObjArray("history", history)
        store.addObjArray("sets", sets)
        store.addInt("setIndex", setIndex)
        store.addDate("modifiedOn", modifiedOn)
        store.addObj("state", state)

        if let name = afterMovement {
            store.addStr("afterMovement", name)
        }
    }
    
  
    public let methodName: String
    public let typeName: String
    public var state = MethodState.waiting

    public func clone() -> Method {
        let store = Store()
        store.addObj("self", self)
        let result: LinProg = store.getObj("self")
        return result
    }
    
    public func start(_ trainingSession: TrainingSession, _ movementName: String) -> Method? {
        self.sets = []
        self.setIndex = 0
        self.TrainingSessionName = trainingSession.name
        self.movementName = movementName
        self.modifiedOn = Date.distantPast  
        
        switch findVariableLoadSetting(movementName) {
        case .right(let setting):
            if let name = afterMovement {
                if case .right(let afterSetting) = findVariableLoadSetting(name) {
                    if afterSetting.load > 0.0 {
                        let load = afterSetting.load
                        let w = Load(load, setting.equipment)
                        if w.nextLoad() > setting.load {
                            setting.changeLoad(w.nextLoad(), byUser: false)
                        }
                    }
                }
            }
            
            if setting.load == 0.0 {
                self.state = .blocked
                return MaxRep("Rep Max", workReps: workReps)
            }
            
            buildSets(setting)
            self.state = .started
            frontend.saveMovement(movementName)

        case .left(let err):
            self.state = .error(err)
        }
        return nil
    }
    
    public func getHist() -> [BaseResult] {
        return history
    }
    
    public func deleteHist(_ index: Int) {
        history.remove(at: index)
        frontend.saveMovement(movementName)
    }
    
    public func on(_ trainingSession: TrainingSession) -> Bool {
        return TrainingSessionName == trainingSession.name
    }
    
    public func refresh() {
        switch findVariableLoadSetting(movementName) {
        case .right(let setting):
            if setting.load > 0.0 {
                buildSets(setting)
            }
        case .left(_):
            break
        }
    }
    
    public func lbl() -> String {
        return movementName
    }
    
    
    public func subLbl() -> String {
        if let set = sets.last {
            return "\(set.load.text) For \(workSets) Sets of \(workReps) Reps "
        } else {
            return ""
        }
    }
    
    public func prvLbl() -> (String, UIColor) {
        var label = makePrevLabel(history)
        var color = UIColor.black
        
        let days = daysAgo(movementName)
        if days >= 14 && !label.isEmpty {
            label += " \(days) days ago"
            color = UIColor.red
        }
        
        return (label, color)
    }
    
    public func histLbl() -> String {
        let loads = history.map {$0.getLoad()}
        return makeHistoryLabel(Array(loads))
    }
    
    public func curr() -> Exercise {
        let info = sets[setIndex].load
        return Exercise(
            workingSetText: sets[setIndex].workingSetText,
            percentOfText: sets[setIndex].percentOfText,
            weightRepsText: "\(info.text) for \(repsStr(sets[setIndex].numReps))",
            loadOnBarText: info.plates,
            buttonName: "Next",
            showStartButton: true,
            color: nil)
    }
    
    public func restSecs() -> RestPeriod {
        switch findRestSecs(movementName) {
        case .right(let secs):
            switch state {
            case .started, .underway:
                return RestPeriod(autoStart:
                setIndex > 0 && !sets[setIndex-1].warmup, secs: secs)
            default: return RestPeriod(autoStart: false, secs: secs)
            }
            
        case .left(_):
            return RestPeriod(autoStart: false, secs: 0)
        }
    }
   
    public func completions() -> Completions {
        if setIndex+1 < sets.count {
            return .normal([Completion(workingSetText: "", isDefault: true, callback: {() -> Void in self.doNext()})])
        } else {
            return .normal([
                Completion(workingSetText: "Completed !",  isDefault: true,  callback: {() -> Void in self.doComplete(false)}),
                Completion(workingSetText: "Failed Set", isDefault: false, callback: {() -> Void in self.doComplete(true)})])
        }
    }
    
    public func restart() {
        setIndex = 0
        modifiedOn = Date()
        state = .started
        refresh()
        frontend.saveMovement(movementName)
    }
    
   
    
    public func currentLoad() -> Double? {
        return nil
    }
    

    

}
