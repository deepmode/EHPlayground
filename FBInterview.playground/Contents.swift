//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
enum MyType {
    case numberType(x:Int)
    case arrayType(x:[Int])
}

let inputValue:[MyType] = [1,[4,3],6,[5,[1,0]]]

func next(input:[Any]) -> [Int] {
    var result = [Int]()
    for each in input {
        result.appendContentsOf(helper(each))
    }
    return result
}

func helper(element:Any) -> [Int] {
    if let value = element as? Int {
        return [value]
    }
    
    
    if let elementArray = element a Array {
        
    }
//    for eachElement in element where eachElement as? Array {
//        var result = [Int]()
//        return result.appendContentsOf(helper(eachElement))
//    }
}


/*
func next(input:[Any]) ->[Int] {
    var inputArray = input
    if inputArray.count == 0 {
        return [Int]()
    }
    
    if let eachElement = inputArray.first as? Int {
        return [eachElement]
    }
    inputArray.removeFirst()
    return NSMutableArray().addObjectsFromArray(next(inputArray))
    //return NSMutableArray().addingObjects(from: next(input: inputArray)) as! [Int]
}
*/


let c = next(input: inputValue)
c.count






