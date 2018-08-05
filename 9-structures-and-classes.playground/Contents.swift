//: Playground - noun: a place where people can play

import UIKit

var str = "Structures and Classes"


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
print("The width of someResolution is \(someResolution.width)")

let vga = Resolution(width: 640, height: 480)

// STRUTURE AND ENUMERATION ARE VALUE TYPE

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print("Cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

// CLASSESE ARE REFERENCE TYPE
let tenEighty = VideoMode()
tenEighty.resolution = hd

tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty

alsoTenEighty.frameRate = 30
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

