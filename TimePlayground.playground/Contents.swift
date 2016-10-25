//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let link = "https://drive.google.com/drive/folders/0BwY7wFF5q06oY0NPV1ZDU0ZBQkE"
let postURL = NSURL(string: link)
var path = link.stringByReplacingOccurrencesOfString(postURL!.host!, withString: "")
path = path.stringByReplacingOccurrencesOfString(postURL!.scheme, withString: "")
path = (path as NSString).substringFromIndex(3)

postURL?.path
postURL?.host
postURL?.baseURL
postURL?.scheme
postURL?.fragment
postURL?.query
postURL?.pathComponents
postURL?.pathExtension

struct Character {
    enum CharacterType {
        case Thief
        case Warrior
        case Knight
    }
    enum Weapon {
        case Bow
        case Sword
        case Lance
        case Dagger
    }
    
    enum Power:Int {
        case VeryLow = 0
        case Low
        case Medium
        case High
        case Full
    }
    let type: CharacterType
    let weapon: Weapon
    let power: Power
}

//by default, swift will create i
let warrior = Character(type: .Warrior, weapon: .Sword, power: .Full)
let b = Character.init(type: .Thief, weapon: .Bow, power: .Medium)

//let warrior = Character(type: .Warrior, weapon: .Sword)

class Stock {
    var name:String?
    var share:Int?
    
    init(name:String?, share:Int?) {
        self.name = name
        self.share = share
    }
}

enum Trade {
    case Buy(stock:String, share:Int)
    //case Sell(stock:String, share:Int)
    case Sell(Stock)
}

func tradeStock(trade:Trade) {
    switch trade {
    case .Buy(stock: let x, share: let y):
        print("A1")
        print("Buy stock \(x) with no. of shares: \(y)")
        //        case .Sell(stock: let x, share: let y):
        //            print("A2")
        //            return "Sell stock \(x) with no. of shares: \(y)"
        //        }
    case .Sell(let stock):
        print("Sell stock \(stock.name!) with no. of shares: \(stock.share!)")
    }
}




let buyTrade:Trade = Trade.Buy(stock: "HSBC", share: 100)
let sellTrade:Trade = Trade.Sell(Stock(name: "Apple", share: 200))

tradeStock(buyTrade)
tradeStock(sellTrade)

//for getting it back the value
if case let Trade.Buy(x,y) = buyTrade {
    print("Buy: \(x) amount: \(y)")
}

//for getting it back the value
if case let Trade.Sell(stock) = sellTrade {
    print("Sell: \(stock.name!) amount: \(stock.share!)")
}



//Trade.tradeStock(etrade: myTrade1)
//Trade.tradeStock(etrade: myTrade2)

for var i = 0 ; i<5; i++ {
    print(i)
}


//########################

typealias Config = (RAM: Int, CPU: String, GPU: String)

// Each of these takes a config and returns an updated config
func selectRAM(_ config: Config) -> Config {
    return (RAM: 32, CPU: config.CPU, GPU: config.GPU)
}

func selectCPU(_ config: Config) -> Config {
    return (RAM: config.RAM, CPU: "3.2GHZ", GPU: config.GPU)
}

func selectGPU(_ config: Config) -> Config {
    return (RAM: config.RAM, CPU: "3.2GHZ", GPU: "NVidia")
}

enum Desktop {
    case Cube(Config)
    case Tower(Config)
    case Rack(Config)
}

let aTower = Desktop.Tower(selectGPU(selectCPU(selectRAM((0, "", "") as Config))))

selectRAM((0, "", "") as Config)

//Truple
let a = (x:0,y:"hello",z:true)
a.0
a.1
a.2

a.x
a.y
a.z

Int.max

let urlString = ""
let url = NSURL(string: urlString)

let urlLink = "http://www.apple.com/helle#a"
let urlA = NSURL(string: urlLink)
let urlB = NSURL(string: urlLink.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!)

urlA?.host == urlB?.host
urlA?.host
urlB?.host

let fontName = "System Medium"
var font = UIFont(name: fontName, size: 17.0) ?? UIFont.systemFontOfSize(17.0)

for family in UIFont.familyNames() {
    print("Font Family = \(family)")
    for name in UIFont.fontNamesForFamilyName(family) {
        print("Font Name = \(name)")
    }
}
