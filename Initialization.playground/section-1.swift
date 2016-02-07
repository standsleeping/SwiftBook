import UIKit

// Classes & structs MUST set all stored properties to an initial value.
// You can set an initial value for a stored property within an initializer.
// Or by assigning a default value as part of the property's definition.
// Customize beyond the default init() by adding initialization parameters.
// Swift provides an automatic external parameter name by default:
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

// But you can omit them if you want
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    // Intentionally omit external name
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

var cel = Celsius(43.0) // Omitted external param

// Structs receive a 'memberwise init' if they don't define their own
struct Size {
    var width = 0.0, height = 0.0
}

let twoByTwo = Size(width: 5.0, height: 5.0)

// Initializer delegation for value types
struct Point {
    var x = 0.0, y = 0.0
}

// Given a center point, you can init with an origin point
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// This only works with no arguments bc you defined init() {}
let myRect = Rect()

// Class inheritance & initialization
// TODO

// Failable initializers
// TODO

// Required initializers
// TODO