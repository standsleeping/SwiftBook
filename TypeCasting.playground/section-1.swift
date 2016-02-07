import UIKit

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Curtiz"),
    Song(name: "Blue", artist: "Elvis"),
    Movie(name: "Kane", director: "Welles"),
    Song(name: "Abba", artist: "Yoo")
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        ++movieCount
    } else if item is Song {
        ++songCount
    }
}

movieCount
songCount

for item in library {
    if let movie = item as? Movie {
        ++movieCount
    } else if let song = item as? Song {
        ++songCount
    }
}
