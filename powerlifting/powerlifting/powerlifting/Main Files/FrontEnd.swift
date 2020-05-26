//  powerlifting
//
// 167682
//import Foundation

//communicates with the front end
public protocol FrontEnd {
    func saveMovement(_ name: String)

    func findTrainingSession(_ name: String) -> TrainingSession?

    func findMovement(_ name: String) -> Movement?

    func assert(_ predicate: Bool, _ message: String)
}

public var frontend: FrontEnd!

public func findMovement(_ name: String) -> Either<String, Movement> {
    if let movement = frontend.findMovement(name) {
        return .right(movement)
    } else {
        return .left("Couldn't find movement '\(name)'")
    }
}


public func findVariableLoadSetting(_ name: String) -> Either<String, VariableLoadSetting> {
    if let movement = frontend.findMovement(name) {
        if case let .variableLoad(setting) = movement.settings {
            return .right(setting)
        } else {
            return .left(" '\(name)' is not using variable load")
        }
    } else {
        return .left("Could not find '\(name)'")
    }
}




//returns a  load the user is expected to lift
 
public func findCurrentLoad(_ name: String) -> Either<String, Double> {
    if let movement = frontend.findMovement(name) {
        switch movement.settings {
        case .variableLoad(let setting):
            return .right(setting.load)
        case .percentOfLoad(let setting):
            return findCurrentLoad(setting.otherName)
       

        }
    } else {
        return .left("\(name) Doesn't exist")
    }
}

public func findRestSecs(_ name: String) -> Either<String, Int> {
    if let movement = frontend.findMovement(name) {
        switch movement.settings {
        case .variableLoad(let setting):
            return .right(setting.restSecs)
        case .percentOfLoad(let setting):
            return .right(setting.restSecs)
       
        }
    } else {
        return .left("\(name) Doesn't exist")
    }
}

public func findEquipment(_ name: String) -> Either<String, Equipment> {
    if let movement = frontend.findMovement(name) {
        switch movement.settings {
        case .variableLoad(let setting):
            return .right(setting.equipment)
        case .percentOfLoad(let setting):
            return findEquipment(setting.otherName)
       
        }
    } else {
        return .left("Couldn't find movement '\(name)'")
    }
}


//If an movement depends on another, the other movements name is returned
public func findBaseMovementName(_ name: String) -> Either<String, String> {
    if let movement = frontend.findMovement(name) {
        switch movement.settings {
        case .percentOfLoad(let setting):
            return name != setting.otherName ? findBaseMovementName(setting.otherName) :
                .left("Percent of movement name is itself: '\(name)'")
        default: return .right(name)
        }
    } else {
        return .left("Couldn't find movement '\(name)'")
    }
}

