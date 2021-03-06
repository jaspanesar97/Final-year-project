//  powerlifting
//
// 167682

import Foundation


public protocol Storable {
    init(from store: Store)
    func save(_ store: Store)
}

public class Store: Codable, CustomStringConvertible {
   
    init() {
        self.store = [:]
    }
    
    fileprivate init(_ store: Dictionary<String,Value>) {
        self.store = store
    }
    
    public func addBool(_ key: String, _ value: Bool) {
        frontend.assert(!key.isEmpty, "addBool empty")
        frontend.assert(!store.keys.contains(key), "Already containing \(key)")
        store[key] = .bool(value)
    }
    
    public func addDate(_ key: String, _ value: Date) {
        frontend.assert(!key.isEmpty, "addDate empty")
        assert(!store.keys.contains(key), "Already containing \(key)")
        store[key] = .date(value)
    }
    
    public func addDateArray(_ key: String, _ value: [Date]) {
        frontend.assert(!key.isEmpty, "addDateArray empty")
        assert(!store.keys.contains(key), "store already contains \(key)")
        let v = value.map {Value.date($0)}
        store[key] = .array(v)
    }
    
    public func addDbl(_ key: String, _ value: Double) {
        frontend.assert(!key.isEmpty, "addDbl empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        frontend.assert(!value.isNaN, "\(key) is NaN")
        frontend.assert(!value.isInfinite, "\(key) is Infinite")
        store[key] = .double(value)
    }
    
    public func addDblArray(_ key: String, _ value: [Double]) {
        frontend.assert(!key.isEmpty, "addDblArray empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        assert(value.all {!$0.isNaN}, "\(key) has a NaN")
        assert(value.all {!$0.isInfinite}, "\(key) has an Infinite")
        let v = value.map {Value.double($0)}
        store[key] = .array(v)
    }
    
    public func addInt(_ key: String, _ value: Int) {
        frontend.assert(!key.isEmpty, "addInt empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        store[key] = .int(value)
    }
    
    public func addIntArray(_ key: String, _ value: [Int]) {
        frontend.assert(!key.isEmpty, "addIntArray empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        let v = value.map {Value.int($0)}
        store[key] = .array(v)
    }
    
    public func addObj(_ key: String, _ value: Storable) {
        frontend.assert(!key.isEmpty, "addObj empty")
        assert(!store.keys.contains(key), "Already contains \(key)")

        let inner = Store()
        value.save(inner)
        store[key] = .object(inner.store)
    }
    
    public func addObjArray(_ key: String, _ value: [Storable]) {
        frontend.assert(!key.isEmpty, "addObjArray empty")
        assert(!store.keys.contains(key), "Already contains \(key)")

        var v: [Value] = []
        for e in value {
            let inner = Store()
            e.save(inner)
            v.append(.object(inner.store))
        }

        store[key] = .array(v)
    }
    
    public func addStr(_ key: String, _ value: String) {
        frontend.assert(!key.isEmpty, "addStr empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        store[key] = .string(value)
    }
    
    public func addStrArray(_ key: String, _ value: [String]) {
        frontend.assert(!key.isEmpty, "addStrArray empty")
        assert(!store.keys.contains(key), "Already contains \(key)")
        let v = value.map {Value.string($0)}
        store[key] = .array(v)
    }
    
    public func hasKey(_ key: String) -> Bool {
        return store.keys.contains(key)
    }
    
    public func getBool(_ key: String, ifMissing: Bool? = nil) -> Bool {
        if let e = store[key], case let .bool(v) = e {
            return v
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getDate(_ key: String, ifMissing: Date? = nil) -> Date {
        if let e = store[key], case let .date(v) = e {
            return v
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getDateArray(_ key: String, ifMissing: [Date]? = nil) -> [Date] {
        if let e = store[key], case let .array(v) = e {
            var result: [Date] = []
            result.reserveCapacity(v.count)
            for x in v {
                if case let .date(y) = x {
                    result.append(y)
                } else if let d = ifMissing {
                    return d
                } else {
                    assert(false); abort()
                }
            }
            return result
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getDbl(_ key: String, ifMissing: Double? = nil) -> Double {
        if let e = store[key], case let .double(v) = e {
            return v
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getDblArray(_ key: String, ifMissing: [Double]? = nil) -> [Double] {
        if let e = store[key], case let .array(v) = e {
            var result: [Double] = []
            result.reserveCapacity(v.count)
            for x in v {
                if case let .double(y) = x {
                    result.append(y)
                } else if let d = ifMissing {
                    return d
                } else {
                    assert(false, "\(key) missing"); abort()
                }
            }
            return result
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getInt(_ key: String, ifMissing: Int? = nil) -> Int {
        if let e = store[key], case let .int(v) = e {
            return v
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getIntArray(_ key: String, ifMissing: [Int]? = nil) -> [Int] {
        if let e = store[key], case let .array(v) = e {
            var result: [Int] = []
            result.reserveCapacity(v.count)
            for x in v {
                if case let .int(y) = x {
                    result.append(y)
                } else if let d = ifMissing {
                    return d
                } else {
                    assert(false); abort()
                }
            }
            return result
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getObj<T: Storable>(_ key: String, ifMissing: T? = nil) -> T {
        if let e = store[key], case let .object(v) = e {
            let inner = Store(v)
            return T(from: inner)
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getObjArray<T: Storable>(_ key: String, ifMissing: [T]? = nil) -> [T] {
        if let e = store[key], case let .array(v) = e {
            var result: [T] = []
            result.reserveCapacity(v.count)
            for x in v {
                if case let .object(y) = x {
                    let inner = Store(y)
                    let z = T(from: inner)
                    result.append(z)
                } else if let d = ifMissing {
                    return d
                } else {
                    assert(false); abort()
                }
            }
            return result
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }

    public func getStr(_ key: String, ifMissing: String? = nil) -> String {
        if let e = store[key], case let .string(v) = e {
            return v
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key) missing"); abort()
        }
    }
    
    public func getStrArray(_ key: String, ifMissing: [String]? = nil) -> [String] {
        if let e = store[key], case let .array(v) = e {
            var result: [String] = []
            result.reserveCapacity(v.count)
            for x in v {
                if case let .string(y) = x {
                    result.append(y)
                } else if let d = ifMissing {
                    return d
                } else {
                    assert(false); abort()
                }
            }
            return result
        } else if let d = ifMissing {
            return d
        } else {
            assert(false, "\(key)missing"); abort()
        }
    }

    public var description: String {
        return objectToStr(store, 0)
    }
    
    private var store: [String: Value]
}

fileprivate enum Value {
    case bool(Bool)
    case date(Date)
    case double(Double)
    case int(Int)
    case string(String)
    case array([Value])
    case object([String: Value])
}

extension Value {
    func describe(_ level: Int) -> String {
        switch self {
        case .bool(let x):
            return (x ? "true" : "false")
        case .date(let x):
            return x.description
        case .double(let x):
            return String(format: "%.3f", x)
        case .int(let x):
            return String(format: "%d", x)
        case .string(let x):
            return "'" + x + "'"
        case .array(let x):
            return "[" + (x.map {$0.describe(level)}).joined(separator: ", ") + "]"
        case .object(let x):
            return "\n" + objectToStr(x, level+1)
        }
    }
}

fileprivate func objectToStr(_ obj: [String: Value], _ level: Int) -> String {
    var result = ""
    
    var prefix = ""
    for _ in 0..<level {
        prefix += "   "
    }
    result = prefix + "{\n"
    
    for (key, value) in obj {
        result += prefix + "   \(key): "
        result += value.describe(level+1)
        result += "\n"
    }
    
    result += prefix + "}"
    return result
}

extension Value: Codable {
    private enum Base: String, Codable {
        case boolType
        case dateType
        case doubleType
        case intType
        case stringType
        case arrayType
        case objectType
    }
    
    private enum CodingKeys: String, CodingKey {
        case base
        case boolValue
        case dateValue
        case doubleValue
        case intValue
        case stringValue
        case arrayValue
        case objectValue
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .bool(let value):
            try container.encode(Base.boolType, forKey: .base)
            try container.encode(value, forKey: .boolValue)
            
        case .date(let value):
            try container.encode(Base.dateType, forKey: .base)
            try container.encode(value, forKey: .dateValue)
            
        case .double(let value):
            try container.encode(Base.doubleType, forKey: .base)
            try container.encode(value, forKey: .doubleValue)
            
        case .int(let value):
            try container.encode(Base.intType, forKey: .base)
            try container.encode(value, forKey: .intValue)
            
        case .string(let value):
            try container.encode(Base.stringType, forKey: .base)
            try container.encode(value, forKey: .stringValue)
            
        case .array(let value):
            try container.encode(Base.arrayType, forKey: .base)
            try container.encode(value, forKey: .arrayValue)
            
        case .object(let value):
            try container.encode(Base.objectType, forKey: .base)
            try container.encode(value, forKey: .objectValue)
        }
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let base = try container.decode(Base.self, forKey: .base)
        
        switch base {
        case .boolType:
            let value = try container.decode(Bool.self, forKey: .boolValue)
            self = .bool(value)
            
        case .dateType:
            let value = try container.decode(Date.self, forKey: .dateValue)
            self = .date(value)
            
        case .doubleType:
            let value = try container.decode(Double.self, forKey: .doubleValue)
            self = .double(value)
            
        case .intType:
            let value = try container.decode(Int.self, forKey: .intValue)
            self = .int(value)
            
        case .stringType:
            let value = try container.decode(String.self, forKey: .stringValue)
            self = .string(value)
            
        case .arrayType:
            let value = try container.decode([Value].self, forKey: .arrayValue)
            self = .array(value)
            
        case .objectType:
            let value = try container.decode([String: Value].self, forKey: .objectValue)
            self = .object(value)
        }
    }
}
