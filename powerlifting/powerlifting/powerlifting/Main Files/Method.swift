//  powerlifting
//
// 167682


/*
 The types that are used to tell the user how to perform a movement such as how many reps
 and sets for warming up as well as the load to use for each set.
 */

import UIKit
import os.log

//Used to tell a Routine of the result of an exercise.
public struct Completion {
    public let workingSetText: String
    public let isDefault: Bool
    public let callback: () -> Void
}

public typealias CardioCompletion = (_ mins: Int, _ calories: Int) -> Void

public enum Completions {
    case normal([Completion])
    
}


public struct Exercise {
    
    public let workingSetText: String
    public let percentOfText: String
    public let weightRepsText: String
    public let loadOnBarText: String
    public let buttonName: String
    public let showStartButton: Bool
    public let color: String?
}

public struct RestPeriod {
    public let autoStart: Bool
    
    public let secs: Int
}

public enum MethodState {
    case waiting
    case started
    case underway
    case finished
    case blocked
    case error(String)
}


//tells the user how to perform sets of some exercise such as a warmup for the main movement
public protocol Method: Storable {
    var methodName: String {get}
    var typeName: String {get}
    var state: MethodState {get}
    func shouldSync(_ savedMethod: Method) -> Bool
    func clone() -> Method
    func start(_ trainingSession: TrainingSession, _ movementName: String) -> Method?
    func on(_ trainingSession: TrainingSession) -> Bool
    func refresh()
    func lbl() -> String
    func subLbl() -> String
    func prvLbl() -> (String, UIColor)
    
    func histLbl() -> String
    
    func curr() -> Exercise
    func restSecs() -> RestPeriod
    func completions() -> Completions
    func restart()
    func getHist() -> [BaseResult]
    func deleteHist(_ index: Int)
    func currentLoad() -> Double?
    func errors() -> [String]
}

extension MethodState: Storable {
    public init(from store: Store) {
        let name = store.getStr("method-state")
        switch name {
        case "waiting":
            self = .waiting
        case "started":
            self = .started
        case "underway":
            self = .underway
        case "finished":
            self = .finished
        case "blocked":
            self = .blocked
        case "error":
            self = .error(store.getStr("method-state-err"))
            
        default: frontend.assert(false, "loading routine had unknown method state: \(name)"); abort()
        }
    }
    
    public func save(_ store: Store) {
        switch self {
        case .waiting:
            store.addStr("method-state", "waiting")
        case .started:
            store.addStr("method-state", "started")
        case .underway:
            store.addStr("method-state", "underway")
        case .finished:
            store.addStr("method-state", "finished")
        case .blocked:
            store.addStr("method-state", "blocked")
        case .error(let s):
            store.addStr("method-state", "error"); store.addStr("method-state-err", s)
        }
    }
}

fileprivate struct TestFrontEnd: FrontEnd {
    init(_ trainingSession: TrainingSession, _ movement: Movement) {
        self.trainingSession = trainingSession
        self.movement = movement
    }
    
    public func saveMovement(_ name: String) {
        
    }
    
    public func findTrainingSession(_ name: String) -> TrainingSession? {
        return name == trainingSession.name ? trainingSession : nil
    }
    
    public func findMovement(_ name: String) -> Movement? {
        return name == movement.name ? movement : nil
    }
    
    public func assert(_ predicate: Bool, _ message: String) {
        if !predicate {
            os_log("ASSERT failed: %@", type: .info, message)
        }
    }
    
    let trainingSession: TrainingSession
    let movement: Movement
}

fileprivate func chooseDefaultCompletion(_ completions: [Completion]) {
    if completions.count == 1 {
        completions[0].callback()
        return
    }
    
    for c in completions {
        if c.isDefault {
            c.callback()
            return
        }
    }
    frontend.assert(false, "no default completion")
}

fileprivate func chooseAnyCompletion(_ completions: [Completion], _ defaultLoad: Int) {
    if completions.count == 1 {
        completions[0].callback()
        return
    }
    
   
    var options = Array(completions)
    for c in completions {
        if c.isDefault {
            for _ in 1..<defaultLoad {
                options.append(c)
            }
        }
    }
    
    let index = Int(arc4random_uniform(UInt32(options.count)))
    options[index].callback()
}

fileprivate func runMethod(_ method: Method, _ trainingSession: TrainingSession, _ movement: Movement, _ noTrainingSession: Int, _ choose: ([Completion]) -> ()) {
    func logExercise() {
        let exercise = method.curr()
        os_log("%@", type: .info, exercise.workingSetText)
        if !exercise.percentOfText.isEmpty {
            os_log("%@", type: .info, exercise.percentOfText)
        }
        if !exercise.weightRepsText.isEmpty {
            os_log("%@", type: .info, exercise.weightRepsText)
        }
        if !exercise.loadOnBarText.isEmpty {
            os_log("%@", type: .info, exercise.loadOnBarText)
        }
    }
    
    let oldFrontEnd = frontend
    
    frontend = TestFrontEnd(trainingSession, movement)
    
    let newMethod = method.start(trainingSession, "default movement")
    if newMethod == nil {
       
        var count = 1
        
        logExercise()
        
        while count <= noTrainingSession {
            switch method.state {
            case .underway:
                logExercise()
                fallthrough
                
            case .started:
                let completions = method.completions()
                switch completions {
                case .normal(let cs):
                    choose(cs)
           
                }
                
            case .finished:
                count += 1
                _ = method.start(trainingSession, "default movement")
                logExercise()
                
            case .waiting:
                frontend = oldFrontEnd
                return
                
            case .blocked:
                frontend = oldFrontEnd
                return
                
            case .error(let err):
                os_log("method state is error(%@)", err)
                frontend = oldFrontEnd
                return
            }
        }
        frontend = oldFrontEnd
    } else {
        os_log("%@ started up a new method", type: .info, method.typeName)
    }
}


// runs the method specific number of times using random completion and gets logged
public func runNonDefaultMethod(_ method: Method, _ trainingSession: TrainingSession, _ movement: Movement, noTrainingSession: Int, defaultLoad: Int = 1) {
    let chooser = {(c: [Completion]) -> () in chooseAnyCompletion(c, defaultLoad)}
    runMethod(method, trainingSession, movement, noTrainingSession, chooser)
}
 

