import UIKit

// Collection types are always clear about the types of values they store

// Behind the scenes, Swift's array and dictionary types are implemented as generic collections (see Generics)

// Arrays
var someInts = [Int]()
var threeDubs = [Double](count: 3, repeatedValue: 0.0)

var shoppingList = ["Eggs", "Flour"]
shoppingList.count
shoppingList.isEmpty
shoppingList.append("Milk")
shoppingList += ["Soda"]

shoppingList.first // Get first
shoppingList.last // Get last

shoppingList.removeLast() // Mutating...
shoppingList // See?

shoppingList += ["Towels"]
var firstItem = shoppingList[1]
var secondAndThirdItems = shoppingList[1...2]

shoppingList
var singleOut = shoppingList[(shoppingList.count - 2)]
var rest = shoppingList[1..<(shoppingList.count)]

shoppingList.insert("Syrup", atIndex: 0)
shoppingList.removeAtIndex(3)

// Filter
shoppingList.filter {
    (T) -> Bool in
    return true
}

// Map
let stringified: [String] = [1,2,3].map({"\($0)"})
stringified

// Reduce
let sum: Int = [1,2,3,4,5].reduce(0) { $0 + $1 }
sum

// Dictionaries
var airports: [String: String] = ["YYZ": "Toronto"]
airports["MWD"] = "Chicago Midway"
airports
airports.removeValueForKey("YYZ")
airports
airports["OMA"] = "Omaha"

for (airportCode, airportName) in airports {
    println(airportCode)
    println(airportName)
}

for airportCode in airports.keys {
    println(airportCode)
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

var namesOfIntegers = [Int]()
