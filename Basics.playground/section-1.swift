import UIKit
import Foundation

let thisIsAConstant = 10

var variablesCanChange = 0
variablesCanChange = 1

var declare = 0.0, multipleVars = 0.0, onSameLine = 0.0, withCommas = 4.0

var swiftHasStrongTypes: String
swiftHasStrongTypes = "Which you must delcare, or are implied"

let interpolateMe = "CLEVERLY PLACE"
println("You can \(interpolateMe) values into strings")

let decimalInt = 42
let binaryInt = 0b1001
let octalIngeger = 0o26
let hexadecimalInt = 0x13
var expon = 4.2e4
expon = 4.2e-4

let firstValue = "A very basic"
let secondValue = "data structure"
let tupsCombineValues = (firstValue, secondValue)
tupsCombineValues.0
tupsCombineValues.1

let modifiedNameTup = (firstName: "Ryan", lastName: "Prinz")
modifiedNameTup.firstName
modifiedNameTup.lastName

/* OPTIONAL VALUES */

var thisCouldBeNil: String? = "Which explains the '?' character"

thisCouldBeNil = nil

// "Forced unwrap" ("EXPLICIT UNWRAPPING")
if thisCouldBeNil != nil {
    println("This string is returned if the value is not nil")
}

thisCouldBeNil = "We now assign the variable to a new String (not nil)"

// "Optional binding"
if let myNewVariable = thisCouldBeNil {
    println("Protection from calling a nil var in your code")
    println(myNewVariable)
}

// "Implicitly unwrapped optionals" place an exclamation point after the optional's name
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!
let assumedString: String! = "An implicitly unwrapped optional."
let implicitString: String = assumedString




