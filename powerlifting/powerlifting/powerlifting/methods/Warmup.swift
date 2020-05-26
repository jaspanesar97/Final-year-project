//  powerlifting
//
// 167682

import Foundation
import os.log

public struct Warmup: Storable, Equatable {
    
    fileprivate let noPlates: Int
    fileprivate let firstPercent: Double
    fileprivate let lastPercent: Double
    fileprivate let reps: [Int]
    
    init(noPlates: Int, firstPercent: Double, lastPercent: Double, reps: [Int]) {
        self.noPlates = noPlates
        self.firstPercent = firstPercent
        self.lastPercent = lastPercent
        self.reps = reps
    }
    
    public init(from store: Store) {
        self.noPlates = store.getInt("noPlates")
        self.firstPercent = store.getDbl("firstPercent")
        self.lastPercent = store.getDbl("lastPercent")
        self.reps = store.getIntArray("reps")
    }
    
    public func save(_ store: Store) {
        store.addInt("noPlates", noPlates)
        store.addDbl("firstPercent", firstPercent)
        store.addDbl("lastPercent", lastPercent)
        store.addIntArray("reps", reps)
    }
    
    public static func ==(lhs: Warmup, rhs: Warmup) -> Bool {
        return lhs.noPlates == rhs.noPlates &&
            lhs.firstPercent == rhs.firstPercent &&
            lhs.lastPercent == rhs.lastPercent &&
            lhs.reps == rhs.reps
    }

    public func errors(prefix: String = "") -> [String] {
        var problems: [String] = []
        
        if noPlates < 0 {
            problems += ["\(prefix)warmup.noPlates is negative"]
        }
        
        if firstPercent < 0.0 {
            problems += ["\(prefix)warmup.firstPercent is negative"]
        }
        if firstPercent > 1.0 {
            problems += ["\(prefix)warmup.firstPercent is greater than 100%"]
        }

        if lastPercent < 0.0 {
            problems += ["\(prefix)warmup.lastPercent is negative"]
        }
        if lastPercent > 1.0 {
            problems += ["\(prefix)warmup.lastPercent is greater than 100%"]
        }
        
        if firstPercent > lastPercent {
            problems += ["\(prefix)warmup.firstPercent is greater than lastPercent"]
        }
        
        for (i, rep) in reps.enumerated() {
            if rep < 1 {
                problems += ["\(prefix)rep\(i+1) is less than 1"]
            }
        }

        return problems
    }
    

    internal func computeWarmups(_ equipment: Equipment, workingSetLoad: Double) -> [(Int, Int, Double, Load.Info)] {
        var warmups: [(Int, Int, Double, Load.Info)] = []
        
        for i in 0..<noPlates {
            let percent = 0.0
            let load = Load(percent*workingSetLoad, equipment).closest(below: workingSetLoad)
            warmups.append((reps.first ?? 5, i + 1, percent, load))
        }
        
        let delta = reps.count > 1 ? (lastPercent - firstPercent)/Double(reps.count - 1) : 0.0
        for (i, reps) in reps.enumerated() {
            let percent = firstPercent + Double(i)*delta
            let load = Load(percent*workingSetLoad, equipment).closest(below: workingSetLoad)
            warmups.append((reps, noPlates + i + 1, percent, load))
        }
        
        return warmups
    }

   
    internal func computeWarmups(_ equipment: Equipment, unitLoad: Double) -> [(Int, Int, Double, Load.Info)] {
        var warmups: [(Int, Int, Double, Load.Info)] = []
        
        for i in 0..<noPlates {
            let percent = 0.0
            let load = Load(percent*unitLoad, equipment).closest()
            warmups.append((reps.first ?? 5, i + 1, percent, load))
        }
        
        let delta = reps.count > 1 ? (lastPercent - firstPercent)/Double(reps.count - 1) : 0.0
        for (i, reps) in reps.enumerated() {
            let percent = firstPercent + Double(i)*delta
            let load = Load(percent*unitLoad, equipment).closest()
            warmups.append((reps, noPlates + i + 1, percent, load))
        }
        
        return warmups
    }
    

}

