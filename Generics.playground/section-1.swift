// Playground - noun: a place where people can play

import UIKit

func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// 'T' is a type parameter
var someInt = 3
var anotherInt = 2394

swapTwoValues(&someInt, &anotherInt)

var someString = "Hey"
var anotherString = "Man"
swapTwoValues(&someString, &anotherString)

// Non-generic stack:
struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

// Generic version:
struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}