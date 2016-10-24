// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var helloPlayground:Array<AnyObject>? {
    return ["Hello",1]
    //return nil
}

guard let aaa = helloPlayground else {
    fatalError("fatalError")
}
//print(aaa) //why not working, please check back on this




if let abc = helloPlayground {
    print(abc)
} else {
    fatalError("fatalError")
}





//computing property
var helloworld:Array<String> {
    get {
        return ["hello","World"]
    }
}

//Array
var mutableHelloWorld = helloworld
mutableHelloWorld.append("new element")

print(helloworld) //array type is pass by reference, therefore no change in it
print(mutableHelloWorld)


func perfixWord(myInput inputWord:String) -> String {
    return "suck -> \(inputWord)"
}

var happyWorld:Array<String> = ["Mutable","Happy","World","abc","def","ghi"]

happyWorld.append("i am a mutable array")
happyWorld.count
happyWorld.map { (let eachElement) -> String in
    "each word = \(eachElement)"
}
happyWorld.map { (let eachElement) -> String in
    return perfixWord(myInput:eachElement)
}

happyWorld.map { (let abc) -> String in
    return perfixWord(myInput: abc)
}


happyWorld.count
happyWorld
happyWorld[1...4]
happyWorld[1..<4]
happyWorld[2...2]
happyWorld[2..<2]

for eachElement in happyWorld[1...4] {
    print("->\(eachElement)")
}


var arrayEachworld:[String]? = happyWorld.map { "each word = \($0)"}
arrayEachworld
arrayEachworld!.append("Unwap")
arrayEachworld!.count


var mutableHappyWorld = happyWorld

mutableHappyWorld.append("I am mutable")

mutableHappyWorld.first
if let firstWord = mutableHelloWorld.first {
    print(firstWord)
}

mutableHelloWorld.last
mutableHelloWorld[0]


var arrayOfAny = [AnyObject]()
arrayOfAny.append(100)
arrayOfAny.append(["dict key":"dict value"])
arrayOfAny.append(10.0)
arrayOfAny.append("WORD STRING")
var arrayLookup = arrayOfAny[3] //any object return or index out of bound might occurs
arrayLookup = (arrayOfAny[3] as! String)



var output = [String]()
for eachElement in arrayOfAny {
    if let element =  eachElement as? String {
        //println("String -> \(element)")
        output.append("String -> \(element)")
        
    } else if let element = eachElement as? Double {
        //println("NSNumber -> \(element)")
        output.append("NSNumber -> \(element)")
    } else if let element = eachElement as? Dictionary<String,String> {
        //println("Dictionary<String,String> -> \(element)")
        output.append("Dictionary<String,String> -> \(element)")
    } else {
        //println("cannot recogonize")
        output.append("cannot recogonize")
    }
}
output


if let firstElement = arrayOfAny.first as? String {
    print("first element -> \(firstElement) is a string")
} else {
    
    print("Ops: cannot be cast. ")

}

//Dictionary

var scoreDict:Dictionary<String,Double> = Dictionary()
scoreDict["Eric"] = 10
scoreDict["Peter"] = 100
scoreDict["John"] = 222

//dictionary lookup always return optional
var ericScore = scoreDict["Eric"]


//upwrap the optional value return from dictionary
if let myScore = scoreDict["Eric"] {
    print("\(myScore)")
}


for (key,value) in scoreDict {
    print("\(key) = \(value)")
}






//UIView

var myView:UIView = UIView(frame: CGRectMake(0, 0, 100, 100))
myView.backgroundColor = UIColor.redColor()
//create opitional label
var label:UILabel? = UILabel(frame: CGRectMake(0, 0, 100, 100))
label!.text = "Label Titles"

myView.addSubview(label!)
myView




//happyWorld.append("def")

//mutableHappyWorld.append("def")

//########################
//example of demonstrate a function can take another function as one of its arguments

func greaterThan10(InternalNumber: Int) -> Bool {
    return InternalNumber > 10
}

func matchAnyCondition(inputNumbers:[Int], condition: (Int) -> Bool) -> Bool {
    for each in inputNumbers {
        if condition(each) {
            return true
        }
    }
    return false
}

let inputNumbers  = [1,2,7,8,11]
matchAnyCondition(inputNumbers, condition: greaterThan10)
greaterThan10(10)
greaterThan10(100)
//########################

//########################
//tuple example

var scores  = [1,2,7,8,11]
func calculateStatistics(scores:[Int]) -> (min:Int?, max: Int?, sum: Int?) {
    
    if scores.count < 1 {
        return (nil, nil, nil)
    } else {
        var myMin = scores[0]
        var myMax = scores[0]
        var mySum = 0;
        for each in scores {
            if each < myMin {
                myMin = each
            } else if each > myMax {
                myMax = each
            }
            mySum += each
        }
        return (myMin, myMax, mySum)
    }
}

let resultStatistics = calculateStatistics(scores)
resultStatistics.min!
resultStatistics.max!
resultStatistics.sum!
resultStatistics.0!
resultStatistics.1!
resultStatistics.2!

var emptyScore = [Int]()
calculateStatistics(emptyScore).min
calculateStatistics(emptyScore).max
calculateStatistics(emptyScore).sum

//########################
//function is a first class type 

//a function which return a func that int as input and return int as output
func makeSqureFunction() -> (Int -> Int) {
    func squareFunc(input: Int) -> Int {
        return input * input
    }
    return squareFunc
}

let squareFunction = makeSqureFunction()
squareFunction(10)
squareFunction(100)

//########################

scores
scores.map { (eachNumber: Int) -> Int in
    
    func squareFunc(input: Int) -> Int {
        return input * input
    }
    
    return squareFunc(eachNumber)
    //return eachNumber * eachNumber
}


//################
//demonstrate the map functionß

let stringArray = ["abc", "def", "hij","klm"]

func appendOK(inputString: String) -> String {
        return "\(inputString) OK"
}


//stringArray.map(transform: String -> U)
stringArray.map{(transform: String) -> String in
    return "\(transform) OK"
}

stringArray.map(appendOK)

//################
//looping an array
var numberString = ""
var leadingSpace = ""
for i in 1..<10 {
    //println("--> \(i)")
    numberString += "\(leadingSpace)\(i)"
    if(leadingSpace == "") {
        leadingSpace = " "
    }
    
}
numberString

var fruits = ["apple", "orange", "pear", "strawberry","pineappe","jackfruit"]
var fruitString = ""
var fruitLeadingSpace = "" //default
for eachFruit in fruits[1...3] {
    fruitString += "\(fruitLeadingSpace)\(eachFruit)"
    if(fruitLeadingSpace == "") {
        fruitLeadingSpace = " "
    }
}
fruitString

//################
let candy:Dictionary<String,Int> = ["cho":100, "sweet&sour":50, "honey":30, "sour":20]

var sum = 0
for (name, qty) in candy {
    sum += qty
}
sum

//################
//return value on tuple

let someNumbers = [0, 1, 2, 4, 9, 11, 23, 11]

func tupleReturn(numberArray: Array<Int>) -> (average: String, sum : Int) {
    var sum  = 0;
    for each in numberArray {
        sum += each

    }
    
    return ("hello world", sum)
}

let returnTuple = tupleReturn(someNumbers)
print("Sum of each number in \(someNumbers)  = \(returnTuple.sum), average = \(returnTuple.average)")


//################
//Extension

extension Int {
    func printRepeat(times: Int) -> () {
        for _ in 1...times {
            print("-> \(self)")
        }
    }
    func printSelfTimes() {
        for _ in 1...self {
            print("\(self)")
        }
    }
}

5.printSelfTimes()

10.printRepeat(3)

//################
//trailing Closure

var happyPrint:()->() = {
    print("happyPrint")
}

happyPrint()

var doSomething: Int -> Int = {
    return $0 * 100
}

doSomething(10)
doSomething(4)

var sumOfTwo: (Int,Int) -> Int = {
    return $0 + $1
}
sumOfTwo(10,200)

var square:Int -> Int = {
    return $0 * $0
}
square(2)




































