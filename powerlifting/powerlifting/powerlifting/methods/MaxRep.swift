//  powerlifting
//
// 167682

// this is used to find the users rep max on a certain lift
import UIKit
import os.log

public class MaxRep:Method {
    
  
    private func doNext(_ nextLoad: Double) {
        setNum += 1
        load = nextLoad
        modifiedOn = Date()
        state = .underway
        frontend.saveMovement(movementName)
    }
    
    private func doComplete() {
        if case let .right(movement) = findMovement(movementName) {
            movement.completed[TrainingSessionName] = Date()
        }
        
        modifiedOn = Date()
        state = .finished
        updateLoad()
        frontend.saveMovement(movementName)
    }

    private func updateLoad() {
        switch findVariableLoadSetting(movementName) {
        case .right(let setting):
            setting.changeLoad(load, byUser: false)
            setting.stalls = 0
            
        case .left(let err):
           os_log("%@ updateLoad failed: %@", type: .error, methodName, err)
        }
    }
    
    private let numReps: Int

    private var modifiedOn = Date.distantPast
    private var TrainingSessionName: String = ""
    private var movementName: String = ""
    private var load: Double = 0.0
    private var setNum = 1
   
    
    init(_ name: String, workReps: Int) {
        self.methodName = name
        self.typeName = "NRepMaxMethod"
        self.numReps = workReps
    }
    
    public func errors() -> [String] {
        var problems: [String] = []
                
        if numReps < 1 {
            problems += ["method \(methodName) numReps is less than 1"]
        }
        
        return problems
    }
    
   
    public func shouldSync(_ inMethod: Method) -> Bool {
        if let savedMethod = inMethod as? MaxRep {
            return typeName == savedMethod.typeName &&
                methodName == savedMethod.methodName &&
                numReps == savedMethod.numReps
        } else {
            return false
        }
    }
    
    public required init(from store: Store) {
        self.methodName = store.getStr("name")
        self.typeName = "NRepMaxMethod"
        self.numReps = store.getInt("numReps")

        self.TrainingSessionName = store.getStr("TrainingSessionName", ifMissing: "unknown")
        self.movementName = store.getStr("movementName")
        self.load = store.getDbl("load")
        self.setNum = store.getInt("setNum")
        self.state = store.getObj("state", ifMissing: .waiting)
        self.modifiedOn = store.getDate("modifiedOn", ifMissing: Date.distantPast)

        switch state {
        case .waiting:
            break
        default:
            let calendar = Calendar.current
            if !calendar.isDate(modifiedOn, inSameDayAs: Date()) {
                setNum = 1
                load = 0.0
                state = .waiting
            }
        }
    }
    
    public func save(_ store: Store) {
        store.addStr("name", methodName)
        store.addInt("numReps", numReps)
        store.addStr("TrainingSessionName", TrainingSessionName)
        store.addStr("movementName", movementName)
        store.addDbl("load", load)
        store.addInt("setNum", setNum)
        store.addObj("state", state)
        store.addDate("modifiedOn", modifiedOn)
    }
    
    public let methodName: String
    public let typeName: String
    public var state = MethodState.waiting

    public func clone() -> Method {
        let store = Store()
        store.addObj("self", self)
        let result: MaxRep = store.getObj("self")
        return result
    }
    
    public func start(_ trainingSession: TrainingSession, _ movementName: String) -> Method? {
        self.TrainingSessionName = trainingSession.name
        self.movementName = movementName
        self.modifiedOn = Date.distantPast  

        switch findEquipment(movementName) {
        case .right(let equipment):
            self.load = Load(0.0, equipment).closest().load
            self.setNum = 1
            self.state = .started
            frontend.saveMovement(movementName)
            
        case .left(let err):
            self.state = .error(err)
        }

        return nil
    }
    
    public func getHist() -> [BaseResult] {
        return []
    }
    
    public func deleteHist(_ index: Int) {
        frontend.assert(false, "NRepMaxMethod deleteHistory should not be called")
    }
    
    public func on(_ trainingSession: TrainingSession) -> Bool {
        return TrainingSessionName == trainingSession.name
    }
    
    public func refresh() {
       
    }
    
    public func lbl() -> String {
        return movementName
    }
    
    public func subLbl() -> String {
        return "Work up to \(numReps) rep max"
    }
    
    public func prvLbl() -> (String, UIColor) {
        return ("", UIColor.black)
    }
        
    public func histLbl() -> String {
        return ""
    }
    
    public func curr() -> Exercise {
        switch findEquipment(movementName) {
        case .right(let equipment):
            let info = Load(load, equipment).closest()
            return Exercise(
                workingSetText: "Set \(setNum)",
                percentOfText: "Work up to \(numReps) rep max",
                weightRepsText: "\(info.text) for \(repsStr(numReps))",
                loadOnBarText: info.plates,
                buttonName: "Add More Load or Finish",
                showStartButton: true,
                color: nil)

        case .left(let err):
            return Exercise(
                workingSetText: "Set \(setNum)",
                percentOfText: "Work up to \(numReps) rep max",
                weightRepsText: "",
                loadOnBarText: err,
                buttonName: "Next",
                showStartButton: true,
                color: nil)
        }
    }
    
    public func restSecs() -> RestPeriod {
        switch findRestSecs(movementName) {
        case .right(let secs):
            return RestPeriod(autoStart: false, secs: secs)

        case .left(_):
            return RestPeriod(autoStart: false, secs: 0)
        }
    }

    public func completions() -> Completions {
        var result: [Completion] = []
        
        result.append(Completion(workingSetText: "Finish", isDefault: false, callback: {self.doComplete()}))
        
        switch findEquipment(movementName) {
        case .right(let equipment):
            var prevLoad = load
            for _ in 0..<7 {
                let nextLoad = Load(prevLoad, equipment).nextLoad()
                if nextLoad > load {
                    result.append(Completion(workingSetText: "Add \(Load.friendlyUnitsStr(nextLoad - load))", isDefault: false, callback: {self.doNext(nextLoad)}))
                    prevLoad = nextLoad
                }
            }

        case .left(_):
            break
        }
        
        return .normal(result)
    }
    
    public func restart() {
        modifiedOn = Date()
        switch findEquipment(movementName) {
        case .right(let equipment):
            self.load = Load(0.0, equipment).closest().load
            setNum = 1
            state = .started

        case .left(let err):
            self.load = 0.0
            setNum = 1
            state = .error(err)
        }
        frontend.saveMovement(movementName)
    }
    
  
    
    public func currentLoad() -> Double? {
        return nil
    }
    

}
