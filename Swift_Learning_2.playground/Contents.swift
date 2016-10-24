//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

func mySquare(x:Double) -> Double? {
    return x * x
}

enum Op :CustomStringConvertible   {
    case Operand(operand: Double)
    case UnaryOperation(symbol: String, Double -> Double?)
    case BinaryOperation(symbol: String, (Double,Double) -> Double?)
    
    //conform the protocol: CustomStringConvertible
    var description: String  {
        get {
            switch self {
                case Operand(let operand):
                    return "operand = \(operand)"
                
                case .UnaryOperation(let symbolString, _):
                    return "UnaryOperationSymbol =  \(symbolString)"

                case .BinaryOperation(let symbolString, _):
                    return "BinaryOperationSymbol = \(symbolString)"
            }
        }
    }
}



let op1 = Op.Operand(operand: 12)

let op2 = Op.UnaryOperation(symbol:"y3") { (let y) -> Double? in
        y * y * y
    }

let op3 = Op.UnaryOperation(symbol: "x2", mySquare)

let op4 = Op.BinaryOperation(symbol: "+") { (let a, let b) -> Double? in
    a + b
    }
let op5 = Op.BinaryOperation(symbol: "x") { $0 * $1}

print(op1)
print(op2)

switch op4 {
    case .Operand(let operand):
        print("\(operand)")
    case .UnaryOperation(let symbol, let operation):
        print("\(operation(12))")
    case .BinaryOperation(let symbol, let operation):
        print("\(operation(5,3))")
    
}


//function take array as input and return array output

func oddNumber(inputArray numbers:[Int]) -> [Int] {
    var oddArray:[Int] = [Int]()
    for number in numbers {
        let x = number % 2
        if x != 0 {
            oddArray.append(number)
        }
    }
    return oddArray
}

let nums = [0,1,2,3,4,5,6,11,22,10,33]
let oddNums = oddNumber(inputArray: nums)





