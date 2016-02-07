import UIKit
import Foundation

var stringLiteral = "Literally creating a string"
var emptyString = ""
var anotherEmptyString = String()

emptyString.isEmpty

// Strings are value types
let immutableString = "Ryan"
var mutableString = "Ryan"

mutableString += " " + "Prinz"

// Substrings
var s = "hello"
let index = advance(s.startIndex, 2) // ADVANCE is key to using substrings
s.splice(" -spliceMe- ", atIndex: index)

let startIndex = advance(s.startIndex, 1)
let endIndex = advance(s.startIndex, 6)
let subString = s[index..<endIndex]

// Strings are arrays of characters
let a = Array("abc")
let str = String(["a", "b", "c", "d"])