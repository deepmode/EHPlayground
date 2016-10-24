//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let inputValue:[Any] = [1,[4,3],6,[5,[1,0]]]
inputValue



func next(input:[Any]) ->[Int] {
    var inputArray = input
    if inputArray.count == 0 {
        return [Int]()
    }
    
    if let eachElement = inputArray.first as? Int {
        return [eachElement]
    }
    inputArray.removeFirst()
    
    return NSMutableArray().addingObjects(from: next(input: inputArray)) as! [Int]
}

let c = next(input: inputValue)
c.count






