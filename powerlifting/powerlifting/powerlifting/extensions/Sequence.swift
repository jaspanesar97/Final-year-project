//  powerlifting
//
// 167682


extension Sequence {
    
    
    func all(_ predicate: (Iterator.Element) -> Bool) -> Bool {
        for x in self {
            if !predicate(x) {
                return false
            }
        }
        return true
    }
    
    
    
    
    func any(_ predicate: (Iterator.Element) -> Bool) -> Bool {
        for x in self {
            if predicate(x) {
                return true
            }
        }
       
        return false
    }
    
    
    func findLast(_ predicate: (Iterator.Element) -> Bool) -> Element? {
        for x in self.reversed() {
            if predicate(x) {
                return x
            }
        }
        return nil
    }
    
    
   
    func count(_ predicate: (Iterator.Element) -> Bool) -> Int {
        var n = 0
        for x in self {
            if predicate(x) {
                n += 1
            }
        }
        return n
    }
    
    func mapi<T>(_ mapping: (Int, Iterator.Element) -> T) -> [T] {
        var result: [T] = []
        
        for (i, x) in self.enumerated() {
            result.append(mapping(i, x))
        }
        
        return result
    }
}

extension Sequence where Iterator.Element : Comparable {
    func maxElementi() -> (Self.Iterator.Element, Int)? {
        var result: (Self.Iterator.Element, Int)? = nil
        
        for (index, candidate) in self.enumerated() {
            if result == nil || candidate > result!.0 {
                result = (candidate, index)
            }
        }
        
        return result
    }
}


