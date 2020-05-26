//  powerlifting
//
// 167682
// Types representing a routine within a trainingSession
import Foundation
import os.log

public class Movement: Storable {
    init(_ name: String, _ formalName: String, _ method: Method, _ settings: Settings, hidden: Bool = false) {
        self.name = name
        self.formalName = formalName
        self.method = method
        self.nextMovement = nil
        self.prevMovement = nil
        self.settings = settings
        self.completed = [:]
        self.hidden = hidden
    }
    
    public required init(from store: Store) {
        self.name = store.getStr("name")
        self.formalName = store.getStr("formalName")
        self.settings = store.getObj("settings")
        self.hidden = store.getBool("hidden")
        
        self.completed = [:]
        if store.hasKey("completed-names") {
            let names = store.getStrArray("completed-names")
            let dates = store.getDateArray("completed-dates")
            
            for (i, name) in names.enumerated() {
                self.completed[name] = dates[i]
            }
        }
        
        if store.hasKey("nextMovement") {
            self.nextMovement = store.getStr("nextMovement")
        } else {
            self.nextMovement = nil
        }
        if store.hasKey("prevMovement") {
            self.prevMovement = store.getStr("prevMovement")
        } else {
            self.prevMovement = nil
        }

        let pname = store.getStr("method-type")
        switch pname {
        case "TopSetMethod":
            let p: TopSet = store.getObj("method"); self.method = p
      
        case "LinearMethod":
            let p: LinProg = store.getObj("method"); self.method = p
        case "NRepMaxMethod":
            let p: MaxRep = store.getObj("method"); self.method = p
        case "PercentOfMethod":
            let p: Percentage = store.getObj("method"); self.method = p
        default: frontend.assert(false, "loading movement \(name) had unknown method: \(pname)"); abort()
        }
    }
    
    public func save(_ store: Store) {
        store.addStr("name", name)
        store.addStr("formalName", formalName)
        store.addStr("method-type", method.typeName)
        store.addObj("method", method)
        store.addObj("settings", settings)
        store.addBool("hidden", hidden)
        
        if let next = nextMovement {
            store.addStr("nextMovement", next)
        }
        if let prev = prevMovement {
            store.addStr("prevMovement", prev)
        }
        
        store.addStrArray("completed-names", Array(completed.keys))
        store.addDateArray("completed-dates", Array(completed.values))
    }
    
    // Used for methods that need to run a different method first such as Maxrep method
    public func withMethod(_ newName: String, _ newMethod: Method) -> Movement {
        let result = Movement(newName, formalName, newMethod, settings, hidden: true)
        result.nextMovement = self.nextMovement
        result.prevMovement = self.prevMovement
        return result
    }
    
    public func sync(_ savedMovement: Movement) {
        if method.shouldSync(savedMovement.method) {
            method = savedMovement.method
            completed = savedMovement.completed
            settings = savedMovement.settings
        }
    }

    public var name: String
    public var formalName: String
    public var method: Method
    public var settings: Settings
    public var completed: [String: Date]
    

    public var prevMovement: String?
    public var nextMovement: String?
    public var hidden: Bool

    public func errors(_ routine: Routine) -> [String] {
        var problems: [String] = []
        
     
        problems += method.errors()
        
        switch settings {
        case .variableLoad(let setting): problems += setting.errors()
        case .percentOfLoad(let setting): problems += setting.errors(routine)
        }
        
        if let name = prevMovement, routine.findMovement(name) == nil {
            problems += ["movement \(name) prevMovement (\(name)( is missing from the routine"]
        }
        if let name = nextMovement, routine.findMovement(name) == nil {
            problems += ["movement \(name) nextMovement (\(name)) is missing from the routine"]
        }
        
        return problems
    }    
}

internal func repsStr(_ reps: Int, topSet: Bool = false) -> String {
    if topSet {
        return "\(reps) reps"

    } else {
        if reps == 1 {
            return "1 rep"
        } else {
            return "\(reps) reps"
        }
    }
}
