// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var fruits = ["apple", "blueberry","orange"]
fruits += ["strawberry"]
fruits.first!
fruits.last!
fruits.append("pear")
fruits.insert("pineapple", at: 0)
//fruits.splice(["lemon","kwi"], atIndex: 1)
// fruits.splice([1], atIndex: 0) //will not work as T = String, type inference from above defined [String], therefore [1] will not work
/* mutating func splice<S : CollectionType where S.Generator.Element == T>(newElements: S, atIndex i: Int) */
var reverse = fruits.reverse()
print(reverse)
fruits.removeLast()
fruits
// fruits.replaceRange(1...1, with: ["XXXXXXX"])
fruits.sort { (value1:String, value2:String) -> Bool in
    value1 < value2
}
fruits.removeSubrange(0..<1)


//#####
let integerArray = [1,2,3,4,5,6,7,8,9,10]
let sum: Int = integerArray.reduce(0) {$0+$1}
sum

//#####
let numbers = [1.07,2,3,4,5,6,7,8,9,10]
let total = numbers.reduce(0) { (result:Double, eachValue:Double) in
    return result + eachValue
}
total


//#####
func sumOfTwoNumbers(number1:Double, number2:Double) -> Double {
    return number1 + number2
}

let sumResult = numbers.reduce(0) {
    sumOfTwoNumbers(number1: $0, number2: $1)
}
sumResult

//#####
let nums = [1,2,3,4,5,6,7,8,9,10]
var evenNumbers = nums.filter() {
    return ($0 % 2) == 0
}
evenNumbers
func oddFunction(value:Int) -> Bool {
    return (value % 2) > 0
}

func evenFunction(value:Int) -> Bool {
    return (value % 2) == 0
}

var oddNumbers = nums.filter() { (includeElement: Int) in
    return oddFunction(value: includeElement)
}

oddNumbers

evenNumbers = nums.filter() {
    evenFunction(value: $0)
}

evenNumbers

//map function
let evenStringArrays = evenNumbers.map { (value:Int) -> String in
    return "\(value)"
}
evenStringArrays


func toString(value:Int) -> String {
    return "\(value)"
}

let oddStringArrays = oddNumbers.map {
    toString(value: $0)
}
oddStringArrays

let words = ["A","B","C","D"]
let output = words.reduce("My Output: ") { (resultString: String, eachElement:String) -> String in
    return "\(resultString)\(eachElement)"
}
output











