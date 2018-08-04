//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// CLOSURE EXPRESSION
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)


reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Inferring type from context
reversedNames = names.sorted(by: {s1, s2 in return s1 > s2})

// Implicit returns from Single-Expression Closures
reversedNames = names.sorted(by: {s1, s2 in s1 > s2})

// Shorthand argument Names
reversedNames = names.sorted(by: {$0 > $1})

// Operation methods
reversedNames = names.sorted(by: >)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map{ (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)

// ESCAPING
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomeThing() {
        someFunctionWithEscapingClosure {
            self.x = 10
        }
        someFunctionWithEscapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
instance.doSomeThing()
print(instance.x)

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

completionHandlers.first?()
print(instance.x)
