////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//let (x,y) = (1,2)
//
//10 / 2.5
//
//// COMPOUNDS ASSIGNMENT OPERATORs
//var a = 1
//a += 2
//
//// COMPARISON OPERATORS
//(1, "zebra") < (2, "apple")
//
//(1, "zebra") > (1, "apple")
//
//("zebra", -1) > ("apple", 1)
//
//// TERNARY CONDITION OPERATIONS
//let contentHeight = 40
//let hasHeader = true
//
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)
//
//// NIL-COALESCING OPERATORS
//
//let defaultColorName = "red"
//var userDefineColorName: String?
//
//var colorName = userDefineColorName ?? defaultColorName
//
//// RANGE OPERATORS
//
//for index in 0...5 {
//    print("index times 5 is \(index * 5)")
//}
//
//// half-open range operator
//let names = ["Anna", "Alex", "Brian", "Jack"]
//let count = names.count
//for i in 0..<count {
//    print("Person \(i+1) is called \(names[i])")
//}
//
//// one-side ranges
//for name in names[2...] {
//    print(name)
//}
//
//for name in names[...2] {
//    print(name)
//}
//
//for name in names[..<2] {
//    print("-------")
//    print(name)
//}
//
//
//// LOGICAL OPERATORS
//let allowedEntry = false
//if !allowedEntry {
//    print("ACCESS DENIED")
//}

// logical and operator

let enteredDoorCode = true
let passRetinaScan = false

if enteredDoorCode && passRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// logical or operator
let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

