//  powerlifting
//
// 167682
//Encapsulating set of movements to perform in training session

import Foundation

public class TrainingSession: Storable {
    
    public var name: String
    public var movements: [String]
    public var noncompulsory: [String]
    public var scheduled: Bool
    
    init(_ name: String, _ movements: [String], scheduled: Bool = true, noncompulsory: [String] = []) {
        self.name = name
        self.movements = movements
        self.noncompulsory = noncompulsory
        self.scheduled = scheduled
    }

    public required init(from store: Store) {
        self.name = store.getStr("name")
        self.movements = store.getStrArray("movements")
        self.noncompulsory = store.getStrArray("noncompulsory")
        self.scheduled = store.getBool("scheduled", ifMissing: true)
    }
    
    public func save(_ store: Store) {
        store.addStr("name", name)
        store.addStrArray("movements", movements)
        store.addStrArray("noncompulsory", noncompulsory)
        store.addBool("scheduled", scheduled)
    }

   

    public func errors(_ routine: Routine) -> [String] {
        var problems: [String] = []
        
        for n in Set(movements) {
            if movements.count({$0 == n}) > 1 {
                problems += ["training Session \(name) movement (\(n)) appears more than once"]
            }
        }
        
        for n in Set(noncompulsory) {
            if noncompulsory.count({$0 == n}) > 1 {
                problems += ["training Session \(name) noncompulsory (\(n)) appears more than once"]
            }
        }
        
        for n in Set(noncompulsory) {
            if !movements.contains(n) {
                problems += ["training Session \(name) noncompulsory (\(n)) isn't in movements"]
            }
        }
        
        for n in Set(movements) {
            if routine.findMovement(n) == nil {
                problems += ["training Session \(name) movements (\(n)) isn't in the routine"]
            }
        }
        
        return problems
    }
}

public class Routine: Storable {
    public enum Tags {
        case novice
        case intermediate
        
        case deadStickBottom
        case deadStickMiddle
        case deadStickTop
        
        
        
        case benchStickBottom
        case benchStickMiddle
        case benchStickTop

        case threeDays
        case fourDays
        case fiveDays
    
        
        case squatStickBottom
        case squatStickMiddle
        case squatStickTop
      
    }
    
    init(_ name: String, _ trainingSessions: [TrainingSession], _ movements: [Movement], _ tags: [Tags], noTrainingSession: Int?, nxtRoutine: String?) {
        self.name = name
        self.trainingSessions = trainingSessions
        self.movements = movements
        self.tags = Set(tags)
        self.noTrainingSession = noTrainingSession
        self.nxtRoutine = nxtRoutine
    }

    convenience init(_ name: String, _ trainingSessions: [TrainingSession], _ movements: [Movement], _ tags: [Tags]) {
        self.init(name, trainingSessions, movements, tags,  noTrainingSession: nil, nxtRoutine: nil)
    }

    public func errors() -> [String] {
        var problems: [String] = []
        
        for w in trainingSessions {
            problems += w.errors(self)
        }
        
        for e in movements {
            problems += e.errors(self)
        }
       
        return problems
    }
    
    public required init(from store: Store) {
        self.name = store.getStr("name")
        self.trainingSessions = store.getObjArray("trainingSessions")
        self.movements = store.getObjArray("movements")
        self.tags = Set(store.getObjArray("tags"))

    }
    
    public func save(_ store: Store) {
        store.addStr("name", name)
        store.addObjArray("trainingSessions", trainingSessions)
        store.addObjArray("movements", movements)
        store.addObjArray("tags", Array(tags))
    }

    public func findTrainingSession(_ name: String) -> TrainingSession? {
        return trainingSessions.first {$0.name == name}
    }
    
    public func findMovement(_ name: String) -> Movement? {
        return movements.first {$0.name == name}
    }
    
    public func setMovement(_ movement: Movement) {
        if let index = movements.firstIndex(where: {$0.name == movement.name}) {
            movements[index] = movement
        } else {
            movements.append(movement)
        }
    }
    

    
   
    public func sync(_ savedRoutine: Routine) {
        func inProgression(_ name1: String, _ name2: String) -> Bool {
            var name: String? = name1
            while let candidate = name, let movement = findMovement(candidate) {
                if movement.name == name2 {
                    return true
                }
                name = movement.prevMovement
            }

            name = name1
            while let candidate = name, let movement = findMovement(candidate) {
                if movement.name == name2 {
                    return true
                }
                name = movement.nextMovement
            }

            return false
        }
        
        frontend.assert(name == savedRoutine.name, "attempt to sync routines \(name) and \(savedRoutine.name)")
        for savedMovement in savedRoutine.movements {
            if let movement = movements.first(where: {$0.name == savedMovement.name}) {
                movement.sync(savedMovement)
            } else if savedMovement.hidden {
                movements.append(savedMovement)
            }
            
        }

        
    }
   
    // 'three day novice'
    public var name: String
    public var trainingSessions: [TrainingSession]
    public var movements: [Movement]
    public var tags: Set<Tags>
    public var noTrainingSession: Int?
    public var nxtRoutine: String? 
}

extension Routine.Tags: Storable {
    public init(from store: Store) {
        let tname = store.getStr("tag")
        switch tname {
        case "beginner":
            self = .novice
        case "intermediate":
            self = .intermediate
      
            
       //deadlift sticking points
        case "Deadlift Sticking Point: Bottom":
            self = .deadStickBottom
        case "Deadlift Sticking Point: Middle":
            self = .deadStickMiddle
        case "Deadlift Sticking Point: Top":
            self = .deadStickTop
        
        //number of days the user wants to trainingSession
        case "threeDays":
            self = .threeDays
        case "fourDays":
            self = .fourDays
        case "fiveDays":
            self = .fiveDays
        
        //bench sticking point
        case "Bench Sticking Point: Bottom":
            self = .benchStickBottom
        case "Bench Sticking Point: Middle":
            self = .benchStickMiddle
        case "Bench Sticking Point: Top":
            self = .benchStickTop

       //squat sticking point 
        case "Bottom":
            self = .squatStickBottom
        case "Middle":
            self = .squatStickMiddle
        case "Top":
            self = .squatStickTop
      

        default:
            frontend.assert(false, "loading routine had unknown tag: \(tname)"); abort()
        }
    }
    
    public func save(_ store: Store) {
        switch self {
        case .novice:
            store.addStr("tag", "beginner")
        case .intermediate:
            store.addStr("tag", "intermediate")
       
        case .deadStickBottom:
            store.addStr("tag", "Deadlift Sticking Point: Bottom")
        case .deadStickMiddle:
            store.addStr("tag", "Deadlift Sticking Point: Middle")
        case .deadStickTop:
            store.addStr("tag", "Deadlift Sticking Point: Top")

        case .threeDays:
            store.addStr("tag", "threeDays")
        case .fourDays:
            store.addStr("tag", "fourDays")
        case .fiveDays:
            store.addStr("tag", "fiveDays")
       
            
        case .benchStickBottom:
            store.addStr("tag", "Bench Sticking Point: Bottom")
        case .benchStickMiddle:
            store.addStr("tag", "Bench Sticking Point: Middle")
        case .benchStickTop:
            store.addStr("tag", "Bench Sticking Point: Top")

        
        case .squatStickBottom:
            store.addStr("tag", "Bottom")
        case .squatStickMiddle:
            store.addStr("tag", "Middle")
        case .squatStickTop:
            store.addStr("tag", "Top")
            


        }
    }
}
