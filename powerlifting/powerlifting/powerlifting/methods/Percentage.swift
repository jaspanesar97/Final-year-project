//  powerlifting
//
// 167682

// Method that uses a percent of the load from another method.
import UIKit

public class Percentage:Method {
    
    
    private let warmups: Warmup
    private let workSets: Int;
    private let workReps: Int
    private let percent: Double

    private var modifiedOn = Date.distantPast
    private var TrainingSessionName: String = ""
    private var movementName: String = ""
    private var history: [Result] = []
    private var sets: [Set] = []
    private var setIndex: Int = 0
 
    private func doNext() {
        setIndex += 1
        modifiedOn = Date()
        state = .underway
        frontend.saveMovement(movementName)
    }
    
    private func doComplete() {
        modifiedOn = Date()
        state = .finished
        if case let .right(movement) = findMovement(movementName) {
            movement.completed[TrainingSessionName] = Date()
        }
        
        addResult()
        frontend.saveMovement(movementName)
    }
    
    private func addResult() {
        let info = sets.last!.load
        let numSets = sets.reduce(0) {(sum, set) -> Int in sum + (set.warmup ? 0 : 1)}
        let numReps = sets.last!.numReps
        let result = Result(numSets, numReps, info)
        history.append(result)
    }
    
    private func buildSets(_ equipment: Equipment, _ otherLoad: Double) {
        let workingSetLoad = percent*otherLoad
        
        sets = []
        let warmupSets = warmups.computeWarmups(equipment, workingSetLoad: workingSetLoad)
        for (reps, setIndex, percent, warmupLoad) in warmupSets {
            sets.append(Set(equipment, phase: setIndex, phaseCount: warmupSets.count, numReps: reps, percent: percent, warmupLoad: warmupLoad, workingSetLoad: workingSetLoad))
        }
        
        for i in 0..<workSets {
            sets.append(Set(equipment, phase: i+1, phaseCount: workSets, numReps: workReps, workingSetLoad: workingSetLoad))
        }
    }
    
    private func getOtherLoad() -> Either<String, Double> {
        
        switch findBaseMovementName(movementName) {
        case .right(let otherName):
            switch findMovement(otherName) {
            case .right(let otherMovement):
                let p = otherMovement.method.clone()
                if let trainingSession = frontend.findTrainingSession(TrainingSessionName) {
                    _ = p.start(trainingSession, otherName)
                    switch p.state {
                    case .blocked:
                        return .left("Execute \(otherName) first")
                    case .error(let err):
                        return .left(err)
                    default:
                       
                        if let load = p.currentLoad() {
                            return .right(load)
                        } else {
                            return findCurrentLoad(otherName)
                        }
                    }
                } else {
                    return .left("Couldn't find trainingSession \(TrainingSessionName)")
                }
            case .left(let err):
                return .left(err)
            }
            
        case .left(let err):
            return .left(err)
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
            self.percentOfText = store.getStr("percentOfText")
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
        init(_ numSets: Int, _ numReps: Int, _ info: Load.Info) {
            self.numSets = numSets
            self.numReps = numReps

            let workingSetText = "\(info.text) \(numSets) Sets of \(numReps) Reps"
            super.init(workingSetText, info.load, primary: true, missed: false)
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
            workingSetText = "\(newLoad.text) for \(numSets) Sets of \(numReps) Reps"
        }
        
        let numSets: Int
        let numReps: Int
    }
    
    init(_ name: String, _ warmups: Warmup, workSets: Int, workReps: Int, percent: Double) {
        self.methodName = name
        self.typeName = "PercentOfMethod"
        self.warmups = warmups
        self.workSets = workSets
        self.workReps = workReps
        self.percent = percent
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
        if percent < 0 {
            problems += ["method \(methodName) percent is less than 0"]
        }
        
        
        return problems
    }
    
   
    public func shouldSync(_ inMethod: Method) -> Bool {
        if let savedMethod = inMethod as? Percentage {
            return typeName == savedMethod.typeName &&
                methodName == savedMethod.methodName &&
                warmups == savedMethod.warmups &&
                workSets == savedMethod.workSets &&
                workReps == savedMethod.workReps &&
                percent == savedMethod.percent
        } else {
            return false
        }
    }
    
    public required init(from store: Store) {
        self.methodName = store.getStr("name")
        self.typeName = "PercentOfMethod"
        self.workSets = store.getInt("workSets")
        self.workReps = store.getInt("workReps")
        self.percent = store.getDbl("percent")
        
        if !store.hasKey("warmups") {
            let firstWarmup = store.getDbl("firstWarmup")
            let warmupReps = store.getIntArray("warmupReps")
            self.warmups = Warmup(noPlates: 2, firstPercent: firstWarmup, lastPercent: 0.9, reps: warmupReps)
        } else {
            self.warmups = store.getObj("warmups")
        }
        
        self.movementName = store.getStr("movementName")
        self.history = store.getObjArray("history")
        self.TrainingSessionName = store.getStr("TrainingSessionName", ifMissing: "unknown")
        self.sets = store.getObjArray("sets")
        self.setIndex = store.getInt("setIndex")
        self.state = store.getObj("state", ifMissing: .waiting)
        self.modifiedOn = store.getDate("modifiedOn", ifMissing: Date.distantPast)

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
        store.addDbl("percent", percent)

        store.addStr("TrainingSessionName", TrainingSessionName)
        store.addStr("movementName", movementName)
        store.addObjArray("history", history)
        store.addObjArray("sets", sets)
        store.addInt("setIndex", setIndex)
        store.addDate("modifiedOn", modifiedOn)
        store.addObj("state", state)
    }
    
    // Method methods
    public let methodName: String
    public let typeName: String
    public var state = MethodState.waiting

    public func clone() -> Method {
        let store = Store()
        store.addObj("self", self)
        let result: Percentage = store.getObj("self")
        return result
    }
    
    public func start(_ trainingSession: TrainingSession, _ movementName: String) -> Method? {

        self.sets = []
        self.setIndex = 0
        self.TrainingSessionName = trainingSession.name
        self.movementName = movementName
        self.modifiedOn = Date.distantPast

        switch findEquipment(movementName) {
        case .right(let equipment):
            switch getOtherLoad() {
            case .right(let otherLoad):
                self.state = .started
                buildSets(equipment, otherLoad)
                frontend.saveMovement(movementName)

            case .left(let err):
                self.state = .error(err)
            }
            
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
        switch findEquipment(movementName) {
        case .right(let equipment):
            switch getOtherLoad() {
            case .right(let otherLoad):
                buildSets(equipment, otherLoad)
            case .left(_):
                break
            }
            
        case .left(_):
            break
        }
    }
    
    public func lbl() -> String {
        return movementName
    }
    
    public func subLbl() -> String {
        var suffix = ""
        switch getOtherLoad() {
        case .right(let otherLoad):
            suffix = "'s \(Load.friendlyUnitsStr(otherLoad, plural: true))"
        case .left(_):
            break
        }
        
        switch findBaseMovementName(movementName) {
            case .right(let otherName):
                let setRep = "\(workSets) Sets of \(workReps) Reps"
                if let load = sets.last?.load {
                    let p = Int(100.0*self.percent)
                    return "\(load.text) For \(setRep)  (\(p)% of \(otherName)\(suffix))"
                
                } else {
                    let p = Int(100.0*self.percent)
                    return "\(setRep)  \(p)% of \(otherName)\(suffix)"
                }

            case .left(let err):
                return err
        }
    }
    
    public func prvLbl() -> (String, UIColor) {
        if let result = history.last {
            return ("Previous was \(Load.friendlyUnitsStr(result.getLoad()))", UIColor.black)
        } else {
            return ("", UIColor.black)
        }
    }
    
    public func histLbl() -> String {
        var loads = Array(history.map {$0.getLoad()})
        if case .right(let equipment) = findEquipment(movementName) {
            if case .right(let otherLoad) = getOtherLoad() {
                let current = Load(percent*otherLoad, equipment).closest(below: otherLoad)
                loads.append(current.load)
            }
        }
        return makeHistoryLabel(loads)
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
            if case .finished = state {
                return RestPeriod(autoStart: false, secs: secs)
            } else {
                return RestPeriod(autoStart: setIndex > 0 && !sets[setIndex-1].warmup, secs: secs)
            }

        case .left(_):
            return RestPeriod(autoStart: false, secs: 0)
        }
    }
 
    public func completions() -> Completions {
        if setIndex+1 < sets.count {
            return .normal([Completion(workingSetText: "", isDefault: true, callback: {() -> Void in self.doNext()})])
        } else {
            return .normal([Completion(workingSetText: "Done", isDefault: false, callback: {() -> Void in self.doComplete()})])
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
        switch getOtherLoad() {
        case .right(let otherLoad):
            return percent*otherLoad
        case .left(_):
            return nil
        }
    }
    


}
