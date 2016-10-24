//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let input:[Any] = [1,[4,3],6,[5,[1,0]]]


func next(input:[Any]) -> [Int] {
    for each in input {
        if let a = each as? Int {
            return [a]
        } else {
            next(input: )
        }
    }
}

for each in input {
    var ouput:[Any] = [Any]()
    if let a = each as? Int {
        each a
    }
}


