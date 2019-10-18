import UIKit

var str = "Hello, playground"

// Classes: are building blocks that allow us to create complex "objects" in our program. those objects are created usinng properties and methods.

/*
 // class syntax:
 */

class MyFirstClass {
    
}
                            // quick review //
 enum Day: CaseIterable {
 case monday, tuesday, wednesday
 }
Day.allCases.count
// enum Day "conforms" to CaseIterble
// note you can only conform to " protocals"

// note: conforming add more functionality
 // Day now has added functionality because of CaseIterable. ex: to count how many cases it has.
//case : is has 3 in this example

/*
inheritance - NOTE: structs Do NOT inherit from other structs!!!
       ****Only classes can inherit from other class.****
*/

class Person {
    var name = "Jane Doe"
    var age = 21
    
    func info() {
        print("This persons name is \(name) and their age is \(age).")
    }
    
}

// Fellow inherits from Person
//Fellow is a subclass of Person
// Fellow is the parent or the superclass of Fellow
// in swift, we only have single inheritance. meaning you can only inherit from ONE parent. ** CLASS IS SINGLE INHERITANCE IN SWIFT **

/*Object-oriented programming exsists on these concepts
 - inheritance
 
 - encapsulation: use private access modifiers on your properties and access them externally through methods
 
 - polymorphism: changing the form of an object
 
note: ':' in classes is syntax thats telling the computer that the class is either about to ingerit from a suoerclass or conforn to a protocol
 */

// the class Fellow inherits from the class Person above


class Fellow: Person {
    
    // func info()
    // NOTE func info() wont compile because parent class Person already has that exact func. so fellow will need to override the func.
   override func info() {
       print("\(name) is a fellow at pursuit and he is \(age) years old! ")
   }
}

class Employee: Person {
    var position = "iOS developer"
    var salary = 85_000
    
    //instance method of overide
    
   override func info() {
        print("\(position) is making $\(salary)")
    }
}

let brendon = Fellow()
brendon.name = "Brendon"
brendon.info()
brendon.age = 30
brendon.info()

// before the Fellow class overrode info() method from the class Person, the print statement was:
        //"This persons name is Brendon and their age is 30."

// with the override it is now
//"Brendon is a fellow at pursuit and he is 30 years old!"

/*
                        Struct Practice
 */



/*
struct Artist {code in here}

struct Popstar: Artist {code in here}
*/

//  note this Cannot compile! because structs cannot inherit from structs or anothing else. can only conform to protocals. the only way to extend a struct is through a protocal.
/*
 protocol Artist {}
 
 struct: Artist {code on here}
 */

// this will complie. necause Artist is now a protocal.



/*
        POLYMORPHISM - CHANGING THE FORM OF AN OBJECT
 */

// instance of a class Person

let tom = Person()
tom.name = "tom"

// instance of an Employee
let john = Employee()
john.name = "John"


// instance of a Fellow
let beinbenido = Fellow()

beinbenido.name = "Beinbenido"


// an array of instances from above
let people = [tom,john,beinbenido]


// note: when you option click on people it is an array of instances of the superclass Person.
// if we were to loop over the people array what would be the info() message ?

for person in people {
    person.info()
}

// each name prints its own subclass info() message

/*
 structs are - value-types : this means that it can get assigned a new variable, the new variable gets a copy of the original.. and while changing the copy, the original does NOT get changed.
 
 classes are - refernces types : meaning multiple instances point to the same object meaning onject b can mutate object a.
 */


// creating instance of Fellow()
 let anna = Fellow()
anna.name = "Anna"
print(anna.name)

// assigning luba the anna object
let luba = anna // both anna and luba are pointing to the same object
print(luba.name) // anna

luba.name = "Luba"
print(luba.name)


// what will anna's name be?
anna.name // luba
print(anna.name)


/*
 Swift provides a way to check for objects equality  of identity usinh "==="
 
 NOTE: There will be a compile error if this syntax is used on anything but             Classes! "===" is only available in/on Classes!
 */


if anna === luba {
    print("both objects are pointing to the same reference")
}

//======================================================================
//                   Initializers on Classes
//======================================================================

struct Dog {
    var breed: String
    var age: Int
}

// creating an instance of dog usuing the memberwise initializer of the Dog struct. ONLY structs provide memberwise initializer

var frenchBulldog = Dog(breed: "French Dulldog", age: 7)

// example of why it doesnt work on class

//class Game {
 //   var name: String
 //   var noOfPlayers: Int
//}

// please note: if the class doesnt have values for All of the properties it will not compile. as oppose to structs that will allow you to initialize values through memberwise initializer.

class Game {
    
    //properties
   var name: String
   var noOfPlayers: Int
    
    //initializers
    
    // note init is a method like a func just without the func keyword
    init(name: String,noOfPlayers: Int){
        self.name = name
    // self is the instance : the same as basketball.name = "Basketball"
        
        self.noOfPlayers = noOfPlayers
    // again self is the instance : the same as basketball.noOfPlayers = 5
        
    }
    
    // methods
    
    func info() {
        print("\(name) has \(noOfPlayers) players.")
    }
}

// let game = Game(name: <#T##String#>, noOfPlayers: <#T##Int#>)
// note that after we use init() to initialize the class properties can now be initialized (or given values)

// immediately this line below is where Game is initiciated

// this is where there are 2 seperate instances of Game meaning that there are 2 different objects.

let basketball = Game(name: "Basketball", noOfPlayers: 5)
basketball.info()

// updating name for instance basketball
basketball.name = "NBA"

basketball.info()

let soccer = Game(name: "Soccer", noOfPlayers: 11)
soccer.info()


// if we made them equal to another then they are pointing at the same object.

//======================================================================
//                  creating instances from a dictionary
//======================================================================

class Playlist {
    //properties
    
    var name: String
    var trackCount: Int
    var description : String
    var isTop100: Bool
    
    //using init to initialize our properties so they can take in values
    
    init(name: String, trackCount: Int, description:String, isTop100: Bool){
        self.name = name
        self.description = description
        self.trackCount = trackCount
        self.isTop100 = isTop100
    }
    // instance method of info()
    
    func info(){
        print("\(name) contains \(trackCount) tracks. It is an \(description)")
        if isTop100{
            print("\(name) is on the Top 100 Chart!!")
        }
    }
}

let playlistDict:[String:Any] = ["name":"Best Pop Songs 2019",
                                 "trackCount": 128,
                                 "description":"Awessome playlist",
                                 "isTop100": true]

// write a function that takes in a dictionary of type [String:Any] that retunrs an optional class Playlist.
func getPlaylistFunc(dict: [String:Any])-> Playlist? {
    // we are accessing the name key in dict
    // we are typecasting type Any to type String using "optional downcasting" (as?)
    // then we use nil-coelescent to unwrapp the optional string
    
    let name = dict["name"] as? String ?? "no name available"
    let trackCount = dict["trackCount"] as? Int ?? 0
    let isTop100 = dict["isTop100"] as? Bool ?? Bool()
    let description = dict["description"] as? String ?? "no description"
    
    let playlist = Playlist(name: name, trackCount: trackCount, description: description, isTop100: isTop100)
return playlist
}
// 
let completedPlaylist = getPlaylistFunc(dict: playlistDict)

// print(completedPlaylist?.name ?? "playlist not created")

completedPlaylist?.info()
