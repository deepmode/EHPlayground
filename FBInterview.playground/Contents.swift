//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//enum MyType {
//    case numberType(x:Int)
//    case arrayType(x:[Int])
//}

var result = [Any]()
let a = [Any]() + [123]
a

let inputValue:[Any] = [1,[1,[2,3],["hello"]],[4,3],6,[5,[1,0]]]

func next(input:[Any]) -> [Int] {
    
    if input.count == 0 {
        return [Int]()
    }
    
    if let firstElement = input.first as? Int {
        var remainder = input
        remainder.removeFirst()
        return [firstElement] + next(input: remainder)
    }
    
    if let firstArray = input.first as? [Any] {
        var remainder = input
        remainder.removeFirst()
        return next(input: firstArray) + next(input: remainder)
    } else {
        var remainder = input
        remainder.removeFirst()
        return next(input: remainder)
    }
}




let c = next(input: inputValue)
let sortList = c.sorted{ (value1, value2) -> Bool in
    value1 < value2
}
sortList
c.count






