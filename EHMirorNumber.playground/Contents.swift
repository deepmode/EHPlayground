//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let num = 123456
let numString = "\(num)"

func isMirror(number:Int) -> Bool {
    let numString = "\(number)"
    let reverse = numString.characters.reversed()
    let reverseString = String(reverse);
    
    return numString == reverseString
}

let a = isMirror(number: 12345678)
let b = isMirror(number: 12321)
a
b


