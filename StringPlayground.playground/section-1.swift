// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let sindex = advance(str.startIndex, 0)
sindex
let eindex = advance(str.endIndex, 0)
eindex
let subString = str[sindex..<eindex]

let endIndex = advance(str.startIndex, 4)
let resultString = str[str.startIndex...endIndex]

let a = Array(arrayLiteral: "abcdef")
var b = ["12345678910"]
a
b.append("def")
b
var c = Array<String>()
c.append("hello")
c

var c1 = [String]()

var d:[String] = ["DDD"]
print(d)

var e:Array<String> = ["EEE"]
print(e)

for each in b {
    c.append("\(each)")
}
c


b.map{
    "a->\($0)"
}

