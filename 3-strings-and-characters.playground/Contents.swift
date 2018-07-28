//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

// INITIALIZING an EMPTY STRING

// WORKING with CHARACTERS

let catCharacters: [Character] = ["C", "A", "T", "!", "🐱"]
let catstring = String(catCharacters)
print(catstring)

// UNICODE
let eAcute: Character = "\u{E9}"
let compinedEAcute: Character = "\u{65}\u{301}"
let preAcute: Character = "\u{65}"
let deAcute: Character = "\u{301}"


let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

let menagerie = "🐌"
print("unusualMenagerie has \(menagerie.count) characters")


let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]

let helloGreeting = "Hello, world!"
let index = helloGreeting.first

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scene in Act1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit)", terminator: "-")
}
print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}

