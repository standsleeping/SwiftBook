import UIKit
import Foundation

// Assignment operator
let constant = 10
var variableToReassign = 5
variableToReassign = constant

// ...Decompose tuples
let (x, y) = (2, 3)
var pullThisOneOutOfTuple = x
var pullThatOne = y

// Incrememnt operators
var incrementor = 0
var assignThenIncrement = incrementor++
var see = incrementor
var incrementThenAssign = ++incrementor

// Ternary conditional operator (? -> :)
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 30)

// Nil coalescing operator
let optionalVar: Int? = nil
let standardVar: Int = 42

// "Traditional" unwrap:
optionalVar != nil ? optionalVar! : standardVar

// "Coalescing" unwrap
let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

// Range operators
// ...Closed:
for index in 1...5 {
    println("Three dots includes the last value")
}

// ...Open:
for index in 1..<5 {
    println("Two dots excludes the last")
}