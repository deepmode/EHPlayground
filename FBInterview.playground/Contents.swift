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

let inputValue:[Any] = [1,[1,[2,3],["key":"value"],["hello"]],[4,3],6,[5,[1,0]]]

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

func allValue(input:[Any]) -> [Any] {
    var remainder = input
    if remainder.count == 0 {
        return [Int]()
    }
    
    if let firstElement = remainder.first as? Int {
        remainder.removeFirst()
        return [firstElement] + allValue(input: remainder)
    }
    
    
    if let firstArray = remainder.first as? [Any] {
        remainder.removeFirst()
        return allValue(input: firstArray) + allValue(input: remainder)
    }
    
    if let firstString = remainder.first as? String {
        remainder.removeFirst()
        return [firstString] + allValue(input: remainder)
    }
    
    remainder.removeFirst()
    return allValue(input: remainder)
}

func flatenAll(input:[Any]) -> [Any] {
    var remainder = input
    if remainder.count == 0 {
        return [Any]()
    }
    if let firstArray = remainder.first as? [Any] {
        remainder.removeFirst()
        return flatenAll(input: firstArray) + flatenAll(input: remainder)
    } else {
        let firstElement = input.first!
        remainder.removeFirst()
        return [firstElement] + flatenAll(input: remainder)
    }
}



let c = next(input: inputValue)
let sortList = c.sorted{ (value1, value2) -> Bool in
    value1 < value2
}
sortList
c.count

let d = allValue(input: inputValue)
d

let e = flatenAll(input: inputValue)
e







