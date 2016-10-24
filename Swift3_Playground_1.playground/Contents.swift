//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum  GenderType{
    case Male
    case Female
    case Other
}

struct Person {
    
    var gender:GenderType?
    var name:String?
    var age:Int?
    
    var prefix:String? {
        if let g = self.gender {
            switch g {
            case .Male:
                return "👨"
            case .Female:
                return "👩"
            case .Other:
                return "👫"
            }
        }
        return nil
    }
    
    var description:String {
        var ageString:String?
        if let a = self.age {
            ageString = ",age: \(a)"
        } else {
            ageString = ",age: unkown"
        }
        return "\(self.prefix ?? "")\(self.name ?? "") \(ageString ?? "")"
    }
}

let personA = Person(gender: .Male , name: "Eric Ho", age: 33)
let personB = Person(gender: .Female, name: "Mary Lee", age: 28)
let personC = Person(gender: nil, name: "Nick Chan", age: nil)

personA.description

personB.description

personC.description






