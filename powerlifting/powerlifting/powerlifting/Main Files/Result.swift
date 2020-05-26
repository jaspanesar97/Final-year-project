//  powerlifting
//
// 167682

//displays what happened with a particular movement
import Foundation


public class BaseResult: Storable {
    var workingSetText: String
    let date: Date
    
    init(_ workingSetText: String) {
        self.workingSetText = workingSetText
        self.date = Date()
    }
    
    public required init(from store: Store) {
        self.workingSetText = store.getStr("workingSetText")
        self.date = store.getDate("date")
    }
    
    public func save(_ store: Store) {
        store.addStr("workingSetText", workingSetText)
        store.addDate("date", date)
    }
}

public class LoadResult: BaseResult {
   
    let primary: Bool
    var missed: Bool

    init(_ workingSetText: String, _ load: Double, primary: Bool, missed: Bool) {
        self.load = load
        self.primary = primary
        self.missed = missed
        super.init(workingSetText)
    }
    
    public required init(from store: Store) {
        self.load = store.getDbl("load")
        self.primary = store.getBool("primary", ifMissing: false)
        self.missed = store.getBool("missed", ifMissing: false)
        super.init(from: store)
    }
    
    public override func save(_ store: Store) {
        super.save(store)
        store.addDbl("load", load)
        store.addBool("primary", primary)
        store.addBool("missed", missed)
    }
    
    
    public func getLoad() -> Double {
        return load
    }

    public func changeLoad(_ newLoad: Load.Info) {
        if newLoad.load != load {
            load = newLoad.load
            updatedLoad(newLoad)
        }
    }
    
    internal func updatedLoad(_ newLoad: Load.Info) {
    }

    private var load: Double
}


//If it given e.g. [90.0,90.0,95.0,100], it returns +5kg x2, same x2
public func makeHistoryLabel(_ loads: [Double]) -> String {
    let deltas = loads.mapi {(i, load) -> Double in i > 0 ? load - loads[i-1] : 0.0}
    let labels = deltas.dropFirst().map {(load) -> String in
        if load > 0.0 {
            return "+" + Load.friendlyUnitsStr(load)
        } else if load == 0.0 {
            return "same"
        } else {
            return Load.friendlyUnitsStr(load)
        }
    }
    
    return makeHistoryFromLabels(labels)
}

public func makeHistoryFromLabels(_ labels: [String]) -> String {
    var entries: [String] = []
    var i = labels.count - 1
    while entries.count < 4 && i >= 0 {
        var count = 0
        while i-count >= 0 && labels[i-count] == labels[i] {
            count += 1
        }
        frontend.assert(count >= 1, "count is \(count) in makeHistoryFromLabels with \(labels)")
        
        if count == 1 {
            entries.append(labels[i])
        } else {
            entries.append(labels[i] + " x\(count)")
        }
        i -= count
    }
    
    return entries.joined(separator: ", ")
}

func makePrevLabel(_ history: [LoadResult]) -> String {
    if let result = history.last {
        let count = countMisses(history)
        if count == 0 {
            return "Previous was \(Load.friendlyUnitsStr(result.getLoad()))"
        } else if count == 1 {
            return "Previous missed \(Load.friendlyUnitsStr(result.getLoad()))"
        } else {
            return "Previous missed \(Load.friendlyUnitsStr(result.getLoad())) \(count)x"
        }
    } else {
        return ""
    }
}

internal func countMisses(_ history: [LoadResult]) -> Int {
    var count = 0
    
    for result in history.reversed() {
        if result.missed {
            count += 1;
        } else {
            return count;
        }
    }
    
    return count
}
