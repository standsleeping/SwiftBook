import UIKit

let somePoint = (1, 1)

switch somePoint {
case (0 ,0):
    println("(0, 0) is at the origin")
case (_, 0):
    println("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    println("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    println("(\(somePoint.0), \(somePoint.1)) is inside a 2x2 sq")
default:
    println("\(somePoint.0), \(somePoint.1)) is outside a 2x2 sq")
}

let anotherPoint = (2, 2)

switch anotherPoint {
case (let x, 0):
    println("on the x-axis with an x value of \(x)")
case (0, let y) where y == 4:
    println("on the y-axis with a y value of \(y)")
case let (x, y):
    println("somewhere else at \(x), \(y)")
}

let puzzleInput = "great minds think alike"

var puzzleOutput = ""

for character in puzzleInput {
    switch character {
        case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}

puzzleOutput

var integerToDescribe = 5

var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default: description += " an integer."
}

println(description)

