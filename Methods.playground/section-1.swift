// Playground - noun: a place where people can play

import UIKit

class Counter {
    var count = 0

    func increment() {
        count++
    }

    func incrementBy(amount: Int) {
        count += amount
    }

    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }

    func reset() {
        count = 0
    }
}

var myCounter = Counter()

myCounter.increment()
