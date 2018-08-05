//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west



enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// MATCHING ENUMERATION VALUES with a SWITCH STATEMENT
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("watch out for penguins")
case .east:
    print("where the sun rises")
case .west:
    print("whre the skies are blue")
}


let somePlanet = Planet.earth
switch .earth {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

enum barCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var  productBarCode = barCode.upc(8, 85909, 51226, 3)

productBarCode =.qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

