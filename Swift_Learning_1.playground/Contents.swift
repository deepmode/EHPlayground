//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var optionalString:String?

//note: generate a random status (true or false) to test the unwrap optional
var status = (arc4random() % 2 == 1) ? true : false

optionalString = status ? "Eric Ho" : nil

if let name = optionalString {
    print("Hello, \(name)")
} else {
    print("Hello Sir / Madam")
}

//switch statement example

let vegetable = "red pepper"

switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("it is a spicy \(x)")
        //note: after executing the code inside the switch case that matched, the program exits from the switch statement
    case let x where x.hasPrefix("red"):
        print("Is it a \(x) color?")
    default:
        print("Everything else")
    
}


//array example

var arrayType1:[Int] = [Int]()
var arrayType2: Array <Int> = Array<Int>()
for i in 0..<100 {
    arrayType1.append(i)
    arrayType2.append(i)
}
print(arrayType1)
print(arrayType2)


//define a "function type"

func performOperation(operation: (String,String) -> String) {
    let myStrings = ["Happy", "New Year"]
    
    if(myStrings.count >= 2) {
        var resultString = operation(myStrings[0],myStrings[1]);
        print("\(resultString)")
    }
}


//apply 0
func joinStringFunc(str1:String,str2:String) -> String {
    return "\(str1) <-> \(str2)"
}

performOperation(joinStringFunc)


//apply 1
//define the closure in line
performOperation( {(str1:String, str2: String) -> String in return "\(str1.uppercaseString) 😁 \(str2.uppercaseString)"})

//apply 2
//trailing closure -> last argument / only argument -> can put it outside of the function
performOperation() { "\($0) 😁 \($1)"}

//apply 3 
//trailing closure
performOperation { (str1:String, str2: String) -> String in
    return "\(str1.uppercaseString) 😁 \(str2.uppercaseString)"
}

//apply 4
//no return -> type inference as the function type return string as it's output ->
performOperation { (str1:String, str2: String) -> String in
    "\(str1.uppercaseString) 😁 \(str2.uppercaseString)"
}

//apply 5
//type inference -> perforOperation which take a function type (a function takes two string input and return a string output) as it's argument
performOperation() {str1, str2 in "\(str1.uppercaseString) 😁 \(str2.uppercaseString)"}



//
//enum -> can have compute propertites

//enum HenkiResponse {
//
//}

//NSNumber 
let n = NSNumber(double: 12.5)
let intValue = n.intValue;
let floatValue = n.floatValue;

//NSDate

let date = NSDate()


//function internal external name

//func apply(eName iName: String















