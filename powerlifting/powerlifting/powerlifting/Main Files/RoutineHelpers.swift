//  powerlifting
//
// 167682

// Helpers used when creating a  routine
import Foundation


// Lin prog Method
public func olympicBar(_ name: String, _ formalName: String, _ numSets: Int, by: Int, warmups: Warmup? = nil, useBumpers: Bool = false, microPlates: [Double] = [], restMins: Double, methodName: String = "", afterMovement: String? = nil) -> Movement {
    var methodName = methodName
    if methodName == "" {
        methodName = "\(numSets)x\(by)"
    }
    
    let defaultWarmups = Warmup(noPlates: 0, firstPercent: 0.8, lastPercent: 0.8, reps: [])
    
    let equipment = Equipment.olympicBar(bar: 20.0, collar: 0.0, plates: availablePlates(), bumperPlates: useBumpers ? defaultBumpers() : [], microPlates: microPlates)
    let setting = VariableLoadSetting(equipment, restSecs: Int(restMins*60.0))
    let method = LinProg(methodName, warmups ?? defaultWarmups, workSets: numSets, workReps: by, afterMovement: afterMovement)
    return Movement(name, formalName, method, .variableLoad(setting))
}

// Top set method
public func olympicBar(_ name: String, _ formalName: String, _ numSets: Int, topSet: Int, warmups: Warmup? = nil, useBumpers: Bool = false, microPlates: [Double] = [], restMins: Double, methodName: String = "") -> Movement {
    var methodName = methodName
    if methodName == "" {
        methodName = "\(numSets)x\(topSet)"
    }
    
    let defaultWarmups = Warmup(noPlates: 0, firstPercent: 0.8, lastPercent: 0.8, reps: [])
    
    let equipment = Equipment.olympicBar(bar: 20.0, collar: 0.0, plates: availablePlates(), bumperPlates: useBumpers ? defaultBumpers() : [], microPlates: microPlates)
    let setting = VariableLoadSetting(equipment, restSecs: Int(restMins*60.0))
    let method = TopSet(methodName, warmups ?? defaultWarmups, workSets: numSets, workReps: topSet)
    return Movement(name, formalName, method, .variableLoad(setting))
}

//  Percentage Method
public func olympicBar(_ name: String, _ formalName: String, _ numSets: Int, by: Int, percent: Double, of: String, warmups: Warmup? = nil, useBumpers: Bool = false, microPlates: [Double] = [], restMins: Double, methodName: String = "") -> Movement {
    var methodName = methodName
    if methodName == "" {
        methodName = "\(Int(100*percent))% of \(of)"
    }
    
    let defaultWarmups = Warmup(noPlates: 0, firstPercent: 0.8, lastPercent: 0.8, reps: [])
    
    let setting = PercentOfLoadSetting(of, restSecs: Int(restMins*60.0))
    let method = Percentage(methodName, warmups ?? defaultWarmups, workSets: numSets, workReps: by, percent: percent)
    return Movement(name, formalName, method, .percentOfLoad(setting))
}

//Lin prog Method
public func plateLoadedMachine(_ name: String, _ formalName: String, _ numSets: Int, by: Int, warmups: Warmup? = nil, restMins: Double, methodName: String = "") -> Movement {
    var methodName = methodName
    if methodName == "" {
        methodName = "\(numSets)x\(by)"
    }
    
    let defaultWarmups = Warmup(noPlates: 0, firstPercent: 0.8, lastPercent: 0.8, reps: [])
    
    let equipment = Equipment.plateLoadedMachine(plates: availablePlates())
    let setting = VariableLoadSetting(equipment, restSecs: Int(restMins*60.0))
    let method = LinProg(methodName, warmups ?? defaultWarmups, workSets: numSets, workReps: by)
    return Movement(name, formalName, method, .variableLoad(setting))
}



public func makeProgression(_ movements: [Movement], _ names: String...) {
    func setNext(_ name: String, _ other: String) {
        let movement = movements.first {$0.name == name}!
        movement.nextMovement = other
    }
    
    func setPrev(_ name: String, _ other: String) {
        let movement = movements.first {$0.name == name}!
        movement.prevMovement = other
    }
    
    for (i, name) in names.enumerated() {
        if i > 0 {
            setNext(names[i-1], name)
            setPrev(name, names[i-1])
        }
    }
}

