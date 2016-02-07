// Playground - noun: a place where people can play

import UIKit

class Dude {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

var reference1: Dude?
var reference2: Dude?
var reference3: Dude?

reference1 = Dude(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

// 2 optionals can create a strong reference cycle
// Use a 'weak' reference
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { println("\(name) is being deinitialized") }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    weak var tenant: Person?
    // Because its POSSIBLE for an apartment not to have a tenant...
    // we create a weak reference to the tenant!
    deinit { println("Apartment \(number) is being deinitialized") }
}

var jon: Person?
var number73: Apartment?

jon = Person(name: "Jonny Ive")
number73 = Apartment(number: 73)

jon!.apartment = number73
number73!.tenant = jon

jon = nil

number73!.tenant

number73 = nil

// Use an 'unowned' property to avoid a strong reference cycle...
// when one property is allowed to be nil but another is not
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    // Because a CC will always have a customer...
    // define its customer property as an unowned reference...
    // and avoid a strong-ref cycle!
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        println("Card \(number) is being deinitialized")
    }
}