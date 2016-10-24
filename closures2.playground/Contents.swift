//: Playground - noun: a place where people can play

import UIKit

var str = "The new Apple Developer Program combines everything you need to develop, distribute, and manage your apps on all Apple platforms into one single program, making it easier than ever to bring your creativity to over a billion customers around the world. Get your apps ready for the App Store on iPhone, iPad, Mac, and Apple Watch, by enrolling in the Apple Developer Program today."


let words:[String] = str.componentsSeparatedByString(" ")

//define a function
func upperCase(inputString string:String) -> String {
    return string.uppercaseString
}

//reference swift book page 15-16, page 187
//the same closures can be written in many different way
words.map({(eachWord:String)->String in
    eachWord.uppercaseString
})

//################
//trailing closure,, when the closure is the only argement, you can omit the () - this is also call trailing closure

words.map { (eachWord:String) -> String in
    let v = "apple"
    //more than single statement, need to add the return
    return upperCase(inputString: eachWord)
    
}

//eachWord is inferring the type from the context (Inferring Type From Context, page 191, swift 2 book
words.map { eachWord -> String in
    //single statement closures implicity return the value of their only statement
    eachWord.uppercaseString
}

words.map { (let eachWord) -> String in
    eachWord.uppercaseString
}

//Shorthand Argument Names
words.map {
    $0.uppercaseString
}

