// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Foo {
    var actionA:() -> Void = {}
    var actionB:() -> Void = {}
    
    var preFixString:([String]) -> Void = {(inputStrings) in
            for each in inputStrings {
                print("PREFIX\(each)")
        }
    }
    
    func show(inputValue value: Int) {
        print("\(value)")
    }
    
    
    var x: Int = 100
    
    func setupMyActionA() {
        var x: Int = 0
        actionA = { [unowned self] in
            x = x + 1
            self.show(inputValue: x) //referece self - bad - memory cycle
            

        }
    }
    
    func setupMyActionB() {
        actionB = {[unowned self] in
            self.x = self.x + 1
            self.show(inputValue: self.x) //referece self - bad - memory cycle
        }
    }
    
    func doMyActionA() {
        for _ in 1...10 {
            actionA()
        }
    }
    
    func doMyActionB() {
        for _ in 1...10 {
            actionB()
        }
    }
}

let fooObj = Foo()
fooObj.doMyActionA()
fooObj.setupMyActionA()
fooObj.doMyActionA()
fooObj.doMyActionA()

fooObj.doMyActionB()
fooObj.setupMyActionB()
fooObj.doMyActionB()
fooObj.x = 20000
fooObj.doMyActionB()


let strings = ["aaa","bbb","ccc"]

//call the default
fooObj.preFixString(strings)


//assign a new closure
fooObj.preFixString = {(inputStrings) in
    for each in inputStrings {
        print("\(each)SUBFIX")
    }
}
fooObj.preFixString(strings)





