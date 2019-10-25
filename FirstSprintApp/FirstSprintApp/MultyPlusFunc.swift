
import Foundation

protocol Addable {
    static func +(lhs: Self, rhs: Self) -> Self
}

func add<T: Addable>(_ num1: T, _ num2: T) -> T {
    return num1 + num2
}


extension Int: Addable {}
extension Double: Addable {}
extension Float: Addable {}
extension String:Addable {}
extension Bool: Addable{}

extension Bool {
    static func +(first: Bool , second: Bool) -> Bool {
        return first || second
    }
}


