//  powerlifting
//
// 167682

// Movement configuration that users are expected to change.
import Foundation

public enum Settings {
    case variableLoad(VariableLoadSetting)
    case percentOfLoad(PercentOfLoadSetting)
}

public enum Equipment
{
    case olympicBar(bar:Double,
        collar:Double,
        plates:[Double],
        bumperPlates: [Double],
        microPlates: [Double])
    case plateLoadedMachine(plates:
        [Double])

}

public class VariableLoadSetting: Storable {
    var equipment: Equipment
    private(set) var load: Double
    private(set) var updatedLoad: Date
    private(set) var userUpdated: Date
    var restSecs: Int
    var stalls: Int
    var reps: Int?

    init(_ equipment: Equipment, restSecs: Int, reps: Int? = nil) {
        self.equipment = equipment
        self.load = 0.0
        self.updatedLoad = Date()
        self.userUpdated = Date.distantPast
        self.restSecs = restSecs
        self.stalls = 0
        self.reps = reps
    }
    
    public func errors() -> [String] {
        var problems: [String] = []
        
        problems += equipment.errors()
        
        if load < 0 {
            problems += ["setting.load is less than 0"]
        }
        if restSecs < 0 {
            problems += ["setting,restSecs is less than 0"]
        }
        if stalls < 0 {
            problems += ["setting,stalls is less than 0"]
        }
        if let r = reps, r < 0 {
            problems += ["setting,reps is less than 0"]
        }
        
        return problems
    }
    
    public required init(from store: Store) {
        self.equipment = store.getObj("equipment")
        self.load = store.getDbl("load")
        self.updatedLoad = store.getDate("updatedLoad")
        self.userUpdated = store.getDate("userUpdated", ifMissing: Date.distantPast)
        self.restSecs = store.getInt("restSecs")
        self.stalls = store.getInt("stalls")

        let r = store.getInt("reps", ifMissing: 0)
        self.reps = r != 0 ? r : nil
    }
    
    public func save(_ store: Store) {
        store.addObj("equipment", equipment)
        store.addDbl("load", load)
        store.addDate("updatedLoad", updatedLoad)
        store.addDate("userUpdated", userUpdated)
        store.addInt("restSecs", restSecs)
        store.addInt("stalls", stalls)
        store.addInt("reps", reps ?? 0)
    }
    
    func changeLoad(_ load: Double, byUser: Bool) {
        self.load = load;
        self.updatedLoad = Date()
        if byUser {
            self.userUpdated = Date()
        }
    }
    
    
    func sameLoad() {
        self.updatedLoad = Date()
    }
    
    func forceDate(_ date: Date) {
        self.updatedLoad = date
    }
}



public class PercentOfLoadSetting: Storable {
    var restSecs: Int
    var otherName: String
    
    init(_ otherName: String, restSecs: Int) {
        self.otherName = otherName
        self.restSecs = restSecs
    }
    
    public func errors(_ routine: Routine) -> [String] {
        var problems: [String] = []
        
        if routine.findMovement(otherName) == nil {
            problems += ["setting,otherName (\(otherName)) isn't defined"]
        }
        
        return problems
    }
    
    public required init(from store: Store) {
        self.otherName = store.getStr("otherName")
        self.restSecs = store.getInt("restSecs")
    }
    
    public func save(_ store: Store) {
        store.addStr("otherName", otherName)
        store.addInt("restSecs", restSecs)
    }
}


extension Settings: Storable {
        public init(from store: Store) {
                let tname = store.getStr("type")
                switch tname {
                    case "variable":
                            self = .variableLoad(store.getObj("setting"))
                    case "percentOf":
                            self = .percentOfLoad(store.getObj("setting"))
        
                    default:
                            frontend.assert(false, "loading settings had unknown type: \(tname)"); abort()
        }
    }
    
        public func save(_ store: Store) {
                switch self {
                    case .variableLoad(let setting):
                            store.addStr("type", "variable")
                                store.addObj("setting", setting)
                    case .percentOfLoad(let setting):
                            store.addStr("type", "percentOf")
                                store.addObj("setting", setting)

                
        }
    }
}

extension Equipment {
    public func errors() -> [String] {
        var problems: [String] = []
        
        switch self {
        case .olympicBar(bar:
            let bar, collar:
            let collar, plates:
            let plates, bumperPlates:
            let bumperPlates, microPlates:
            let microPlates):
            if bar < 0 {
                problems += ["olympicBar.bar is less than 0"]
            }
            if collar < 0 {
                problems += ["olympicBar.collar is less than 0"]
            }
            if plates.isEmpty {
                problems += ["olympicBar.plates is empty"]
            }
            if plates.any({$0 < 0.0}) {
                problems += ["olympicBar.plates is less than 0"]
            }
            if bumperPlates.any({$0 < 0.0}) {
                problems += ["olympicBar.bumperPlates is less than 0"]
            }
            if microPlates.any({$0 < 0.0}) {
                problems += ["olympicBar.microPlates is less than 0"]
            }
            
        case .plateLoadedMachine(plates: let plates):
            if plates.isEmpty {
                problems += ["plateLoadedMachine.plates is empty"]
            }
            if plates.any({$0 < 0.0}) {
                problems += ["plateLoadedMachine.plates is less than 0"]
            }
            
        }
        
        return problems
    }
}

extension Equipment: Storable {
    public init(from store: Store) {
        let tname = store.getStr("type")
        switch tname {
        case "olympicBar":
            let bar = store.getDbl("bar")
            let collar = store.getDbl("collar")
            let plates = store.getDblArray("plates", ifMissing: availablePlates())
            let bumperPlates = store.getDblArray("bumperPlates", ifMissing: defaultBumpers())
            let microPlates = store.getDblArray("microPlates")
            self = .olympicBar(bar: bar, collar: collar, plates: plates, bumperPlates:
                bumperPlates, microPlates: microPlates)
            
        case "paired-plates":
            let plates = store.getDblArray("plates", ifMissing: availablePlates())
            self = .plateLoadedMachine(plates: plates)
            

        default:
            frontend.assert(false, "loading equipment had unknown type: \(tname)"); abort()
        }
    }
    
    public func save(_ store: Store) {
        switch self {
        case .olympicBar(bar: let bar, collar: let collar, plates: let plates, bumperPlates: let bumperPlates, microPlates: let microPlates):
            store.addStr("type", "olympicBar")
            store.addDbl("bar", bar)
            store.addDbl("collar", collar)
            store.addDblArray("plates", plates)
            store.addDblArray("bumperPlates", bumperPlates)
            store.addDblArray("microPlates", microPlates)
            
        case .plateLoadedMachine(plates: let plates):
            store.addStr("type", "paired-plates")
            store.addDblArray("plates", plates)

        
        }
    }
}

