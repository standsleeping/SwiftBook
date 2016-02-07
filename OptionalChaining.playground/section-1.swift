import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        println("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName!
        } else if buildingNumber != nil {
            return buildingNumber!
        } else {
            return nil
        }
    }
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print(roomCount)
} else {
    print("Nope")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Rd"
john.residence?.address = someAddress // Fail bc residence is nil

if john.residence?.printNumberOfRooms() != nil {
    print("Twas possible")
} else {
    print("Twas not possible")
}

if (john.residence?.address = someAddress) != nil {
    print("Twas possible")
} else {
    print("Twas not possible")
}

if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        println("Yep")
    } else {
        println("Nope")
    }
}
