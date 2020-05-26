//  powerlifting
//
// 167682

// Types used to manage loads
import Foundation
import os.log

protocol LoadGenerator
{
    func first() -> (Double, String)
    func next() -> (Double, String)?
}


public struct Load: CustomStringConvertible {
    public struct Info: Storable {
        public let load: Double
        public let text: String
        public let plates: String

        public init(load: Double, text: String, plates: String) {
            self.load = load
            self.text = text
            self.plates = plates
        }
        
        public init(from store: Store) {
            self.load = store.getDbl("load")
            self.text = store.getStr("text")
            self.plates = store.getStr("plates")
        }
        
        public func save(_ store: Store) {
            store.addDbl("load", load)
            store.addStr("text", text)
            store.addStr("plates", plates)
        }
    }
    
    init(_ load: Double, _ equipment: Equipment) {
        self.load = load
        self.equipment = equipment
    }
    func closest() -> Info {
        let candidates = closestRange()
        
        var delta = Double.infinity
        var index = candidates.count
        for (i, x) in candidates.enumerated() {
            let d = abs(x.load - load)
            if d < delta {
                delta = d
                index = i
            }
        }
        
        return candidates[index]
    }
    
    func closest(below: Double) -> Info {
        let candidates = closestRange()
        let limit = Load(below, equipment).closest().load
        
        var delta = Double.infinity
        var index = 0
        for (i, x) in candidates.enumerated() {
            let d = abs(x.load - load)
            if d < delta && x.load < limit {
                delta = d
                index = i
            }
        }
        
        return candidates[index]
    }
    
    func closest(above: Double) -> Info {
        let candidates = closestRange()
        let limit = Load(above, equipment).closest().load
        
        var delta = Double.infinity
        var index = candidates.count - 1
        for (i, x) in candidates.enumerated() {
            let d = abs(x.load - load)
            if d < delta && x.load > limit {
                delta = d
                index = i
            }
        }
        
        return candidates[index]
    }
    
    func nextLoad() -> Double {
        let temp = Load(load + 0.0001, equipment)
        return temp.closest(above: load).load
    }
    
    func prevLoad() -> Double {
        let temp = Load(load - 0.0001, equipment)
        return temp.closest(below: load).load
    }

    public var description: String {
        return String(format: "%.3f", load)
    }
    
    static func friendlyStr(_ load: Double) -> String {
        var result: String
        
        result = String(format: "%.3f", load)
     
        while result.hasSuffix("0") {
            let start = result.index(result.endIndex, offsetBy: -1)
            let end = result.endIndex
            result.removeSubrange(start..<end)
        }
        if result.hasSuffix(".") {
            let start = result.index(result.endIndex, offsetBy: -1)
            let end = result.endIndex
            result.removeSubrange(start..<end)
        }
        
        return result
    }
    
    static func friendlyUnitsStr(_ load: Double, plural: Bool = true) -> String {
        if plural {
            return Load.friendlyStr(load) + " kg"
        } else {
            return Load.friendlyStr(load) + " kg"
        }
    }
    
    private func closestRange() -> [Info] {
        switch equipment {
        case .olympicBar(bar: let barLoad, collar: let collarLoad, plates: let plates, bumperPlates: let bumperPlates, microPlates: let microPlates):
            let limit = 18
            let smallest = 2*min(plates.first ?? 20.0, bumperPlates.first ?? 20.0, microPlates.first ?? 20.0)
            let floor = max(barLoad, load - Double(limit/2)*smallest)
            
           
            var candidates: [Info] = []
            for n in 0..<limit {
                let x = findplateLoadedMachine(floor + Double(n)*smallest, barLoad, collarLoad, plates, bumperPlates, microPlates)
                candidates.append(x)
            }
            
            return candidates
            
        case .plateLoadedMachine(plates: let plates):
            let limit = 18
            let smallest = 2*(plates.first ?? 20.0)
            let floor = max(0.0, load - Double(limit/2)*smallest)

            var candidates: [Info] = []
            for n in 0..<limit {
                let x = findplateLoadedMachine(floor + Double(n)*smallest, 0.0, 0.0, plates, [], [])
                candidates.append(x)
            }
            
            return candidates
    
            
        }
        
    }


    
    private func findplateLoadedMachine(_ target: Double, _ barLoad: Double, _ collarLoad: Double, _ plates: [Double], _ bumperPlates: [Double], _ microPlates: [Double]) -> Info {
        var used: [(Double, String)] = []
        var sum = barLoad + 2*collarLoad
        
        var candidates = bumperPlates.map {($0, "bumper plate")}
        for p in plates {
            if !candidates.contains(where: {(x, _) -> Bool in x == p}) {
                candidates.append((p, "plate"))
            }
        }
        for m in microPlates {
            if !candidates.contains(where: {(x, _) -> Bool in x == m}) {
                candidates.append((m, "microPlates"))
            }
        }
        candidates.sort {$0.0 < $1.0}
        
        
        if let (last, kind) = candidates.last {
            while sum + 2*last <= target {
                sum += 2*last
                used.append((last, kind))
            }
        }
        
       
        var addedmicroPlates = false
        for (plate, kind) in candidates.reversed() {
            if kind != "microPlates" || (!used.isEmpty && !addedmicroPlates) {
                if sum + 2*plate <= target {
                    sum += 2*plate
                    used.append((plate, kind))
                    if kind == "microPlates" {
                        addedmicroPlates = true
                    }
                }
                
                if kind != "microPlates" {
                    if sum + 2*plate <= target {
                        sum += 2*plate
                        used.append((plate, kind))
                    }
                }
            }
        }
        
       
        if let first = bumperPlates.first, sum < barLoad + 2*collarLoad + 2*first {
            sum = barLoad + 2*collarLoad + 2*first
            used = [(first, "bumper plates")]
        }
        
        
        if used.isEmpty {
            sum -= 2*collarLoad
        }
        
        return Info(load: sum, text: Load.friendlyUnitsStr(sum), plates: Load.platesStr(used))
    }
    
    private func findSinglePlates(_ target: Double, _ plates: [Double]) -> Info {
        var used: [(Double, String)] = []
        var sum = 0.0
        
        var candidates: [(Double, String)] = []
        for p in plates {
            if !candidates.contains(where: {(x, _) -> Bool in x == p}) {
                candidates.append((p, "plate"))
            }
        }
        candidates.sort {$0.0 < $1.0}
        
        
        if let (last, kind) = candidates.last {
            while sum + last <= target {
                sum += last
                used.append((last, kind))
            }
        }
        
        
        for (plate, kind) in candidates.reversed() {
            if sum + plate <= target {
                sum += plate
                used.append((plate, kind))
            }

            if sum + plate <= target {
                sum += plate
                used.append((plate, kind))
            }
        }
        
        return Info(load: sum, text: Load.friendlyUnitsStr(sum), plates: Load.platesStr(used))
    }
    
    private static func platesStr(_ plates: [(Double, String)]) -> String {
        if plates.count == 0 {
            return "Empty Bar"
            
        
        } else if plates.count == 1 {
            return "\(Load.friendlyUnitsStr(plates[0].0, plural: false)) \(plates[0].1)"

        } else {
            var s = plates.reversed().map {(w) -> String in Load.friendlyStr(w.0)}
            
           
            var text = ""
            while let plate = s.popLast() {
                var count = 1
                while let plate2 = s.last, plate2 == plate {
                    count += 1
                    _ = s.popLast()
                }
                
                if !text.isEmpty {
                    text += " + "
                }
                if count == 1 {
                    text += plate
                } else {
                    text += "\(count) \(plate)s"
                }
            }
            
            return text
        }
    }

    private let load: Double
    private let equipment: Equipment
}

func daysAgo(_ movementName: String) -> Int {
    switch findVariableLoadSetting(movementName) {
    case .right(let setting):
        let weeks = Int(Date().daysSinceDate(setting.updatedLoad))
        return weeks
        
    case .left(_):
        return 0
    }
}

