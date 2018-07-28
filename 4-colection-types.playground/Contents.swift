//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// ARRAYS
var someInts = [Int]()

someInts.append(3)

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 6)

var sixDouble = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

print(shoppingList)
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// SETS
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()

// DICTIONARIES

var nameOfIntegers = [Int: String]()

nameOfIntegers[16] = "sixteen"

print(nameOfIntegers)

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
let airportCodes = [String](airports.keys)

