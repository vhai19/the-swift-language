//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
var ana = greet(person:"ANNA")
print(ana)

// functions with no parameter
func sayHelloWorld() -> String {
    return "Hello, world"
}

print(sayHelloWorld())

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

// functions with multiple parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person:person)
    } else {
        return greet(person: person)
    }
}

print(greet(person: "tim", alreadyGreeted: true))

// function with multiple return values
func minMax(array: [Int]) -> (min:Int, max:Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional tuples return types
func minMaxOptional(array: [Int]) -> (min:Int, max:Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
var number = [Int]()

let boundsOptional = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(boundsOptional.min) and max is \(boundsOptional.max)")

// Argument Labels
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Omitting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)

// FUNCTIONS TYPES
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(multiplyTwoInts, 3, 5)

// Function tyoes as REturn types
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function

while currentValue != 0 {
    print("\(currentValue)")
    currentValue = moveNearerToZero(currentValue)
}

print("zero!")
