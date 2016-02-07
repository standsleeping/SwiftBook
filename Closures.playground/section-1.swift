import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var reversed = sorted(names, backwards)

// Brief
reversed = sorted(names,
    { (s1: String, s2: String) -> Bool in
    return s1 > s2
    })

// Briefer
reversed = sorted(names, { s1, s2 in return s1 > s2 })

// Briefer still
reversed = sorted(names, { s1, s2 in s1 > s2 })

// Briefer stillll
reversed = sorted(names, { $0 > $1 })

// Briefest
reversed = sorted(names, >)

// Trailing closures
let digitNames = [0: "Zero", 1: "One", 2: "Two"]

let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = "bam"
    while number > 0 {
        return output + " bam"
    }
    return output
}

// Capturing values
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

