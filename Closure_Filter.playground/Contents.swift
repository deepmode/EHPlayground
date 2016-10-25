//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var list = [1,2,10,12,0,11,22,21,232,2132,34,3,12,21,0]

//declear a func with  (Int) -> Bool
func isZero(number:Int) -> Bool {
    return number == 0
}

func nonZero(number:Int) -> Bool {
    return number != 0
}

//define a func which take a func as its parameter
func myOperation(numbers:[Int], condition:(Int) -> Bool) -> [Int] {
    var result = [Int]()
    for each in numbers {
        if condition(each) {
            result.append(each)
        }
    }
    return result
}

let zeroList = myOperation(list, condition:isZero)

zeroList

let nonZeroList = myOperation(list, condition: nonZero)

nonZeroList

let evenNumber = list.filter { (number) -> Bool in
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

evenNumber

//Trailing closure if the func is in the last argument
let oddNumber = list.filter {
    $0 % 2 != 0
}

oddNumber

let greaterThan20 = list.filter { number -> Bool in
    return number > 20
}

greaterThan20






