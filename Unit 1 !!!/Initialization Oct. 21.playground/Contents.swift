import UIKit

var str = "Hello, playground"

class Playlist {
  // properties
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // initializer - designated initializer initializes all the properties of the class
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }
  
    // convenience initializers and failable initialziers
    
    //in structs you dont need to mark it convenienve , jus use init. but in class you have to used convenience for the folloeing action.
    
    convenience init?(dict: [String: Any]) {
        
    // guard let unwraps the value from the key in the dictionary . // the as? (type) is typecasting (downcasting) to cast to an expected type
        
        guard let name = dict["name"] as? String,
            let trackCount = dict["trackCount"] as? Int,
            let description = dict["description"] as? String,
            let isTop100 = dict["isTop100"] as? Bool else{
                return nil
        }
        
        // if all values are available in the guard statement then we can call out designated initializer.
        
        self.init(name: name,
                  trackCount: trackCount,
                  description: description,
                  isTop100: isTop100)
    }
    
    convenience init (){
        
        let names = ["Pursuit Coding List",
                    "Zumba rocks",
                    "Study playlsit",
                    "90's",
                    "Morning Run"]
        self.init (name: names.randomElement() ?? "Pursuit Coding List",
                   trackCount: 200,
                   description:"Awesome coding music",
                   isTop100: false)
    }
    
   convenience init? (inPutname: String) {
    
        if inPutname.count < 3 {
        
            return nil
    }
        self.init(name: inPutname,
                  trackCount: 35,
                  description: "currently trending",
                  isTop100: true)
    }
    
  // instance method
    
  func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]


// create a playlist using the playlist above and print the tract count.
// output: 128

// note bestPlaylist is the playlist we just created.

// below we used optional binding to unwrap the playlist. using the convenience init.


if let bestPlaylist = Playlist(dict: playlistDict) {
    print("The track count is \(bestPlaylist.trackCount)")
}

let randomPlaylist = Playlist()
let randomPlaylist2 = Playlist()

print(randomPlaylist.name)
print(randomPlaylist2.name)



//  note that playlsiWithName is only available to use for string interpolation the in let statement. because the csope of an if let is only inside of the if let.

if let playlistWithName = Playlist(inPutname: "Re") {
        print("Playlist with \(playlistWithName.name) was created")
} else {
    print(" This playlsi was not created")
}
