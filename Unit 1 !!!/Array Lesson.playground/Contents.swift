import UIKit

var str = "Hello, playground"
/*
 ARRAYS!!
 */
// ==============================
//          Arrays
// ==============================
// An Array is an ordered collection of items
// =============================
//      Initializing Arrays
// =============================
// using type Annotation
// we care declaring an Array of type String
var bucketList: [String]
bucketList  = ["France", "Australia", "Boston", "Los Angeles", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]
print(bucketList)// ["France", "Australia", "Boston", "Los Angeles", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]
// count the items in the array
print("There are \(bucketList.count) countries on my bucket list")// There are 9 countries on my bucket list
var threeDoubles = Array (repeating: 0.0, count: 3)
print(threeDoubles) // [0.0, 0.0, 0.0]
// =============================
//  accessing values insie of an array
// =============================
// Tuples:
var juan = (name: "Juan", cohort: 6.3, hobby: "gaming")
var shaniya = (name:"Shaniya", cohort: 6.3, hobby: "musich yeah")
var fellows = [juan, shaniya]
// array of planets
// declaring an array using an array literal
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var dwarfPlanets = ["Pluto"]
// accesing Earth, using subscripting [2]
let thirdRockFromTheSun = planets[2]
print("Our home planet is \(thirdRockFromTheSun)")
let lastPlanet = planets[planets.count - 1]
print("the last planet in our solar system is \(lastPlanet)")
// Print the second to the last planet
let secondToLastPlanet = planets[planets.count - 2]
print("Second to last planet is \(secondToLastPlanet)")
let middlePlanet = planets[planets.count / 2]
print("The middle planet is \(middlePlanet)")
// =======================================
// some properties and methiods on arrays
// =======================================
// property - a variable on an object e.g planets.count
// method - a function that runs on an instance of an object e.g planets.append(:_)
// first
// if planet.first is NOT nil assign the value to the firstPlanet variable
// think about planets.first as being a condition of true or false where if first does not exist the condition is false, if first exist, then the condition is true.
// however long term we will come to realize that planets.first impolies that either we have a valid value of String or not in the case it's nil i.e planets array is empty..
// this is the casde for all optionals
// =========================================
// TWO WAYS OF DECLARING THE ARRAY BELOW ARE
// ========================================
// here we are using option binding to unwrap, the first? value
var programmingLanguages: [String] = []
// using isEmpty property on an array
// isEmpty is preferable over using .count
if programmingLanguages.isEmpty {
    print("we need to start programming")
} else {
    print("programming is fundamental")
}
if programmingLanguages.count == 0 {
    print("what are you waiting for????")
}
// var programmingLanguages: [String]()
// =============================
// appending to an array
// =============================
programmingLanguages.append("Swift")
if let firstProgrammingLanguage = programmingLanguages.first {
    // if we have a valid value of String
    // we enter this if block {.....}
    print("first programming language is \(firstProgrammingLanguage)")
} else {
    print("looks like you havent started using any programming languages.")
}
// ============================
// remove(at:) - removing items from an array
// ============================
print("there are \(planets.count) planets")
planets.append("Pluto")
print("there are \(planets.count) planets")
print(planets) // 9 planets
let removedPlanet = planets.remove(at: planets.count - 1) // 9 - 1 = 8
print("looks like \(removedPlanet) was ditched again")
// ========================
//  randomElement()
// =====================
let randomPlanet = planets.randomElement() ?? "Earth" // default value
// ?? - nil coalescent
print("random planet is \(randomPlanet)")
// ============================
// remove all elements in an array using removeAll()
// ============================
//planets.removeAll() // 0 planets
//
//let randomPlanet = planets.randomElement() ?? "Planet X"
//
//print("new planet is \(randomPlanet)")
//
// ============================
//      popLast()
// ============================
let oopsAnotherPlanetIsGone = planets.popLast() ?? "Planet X"
print(oopsAnotherPlanetIsGone)
print("looks like \(oopsAnotherPlanetIsGone) has been destroyed")
// compile-time errors
// runtime-errors

/*
                            ARRAY LAB WORKSPACE
*/

    var colors = ["orange", "red", "yellow", "turquoise", "lavender"]
    var ora = colors[0]
    var yel = colors[2]
    var lav = colors[4]
print("\(ora), \(yel), and \(lav) are some of my favorite colors!")

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
let removedStates = westernStates.remove(at: westernStates.count - 1 )
let removedNextState = westernStates.remove(at: westernStates.count - 1)
print(westernStates)

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

for index in 0..<moreStates.count {
    if moreStates[index] == moreStates[0] {
        print("\(moreStates[index]): is not the continental United States ")
    }else {
        print("\(moreStates[index]): is in the continental United States  ")
    }
}
                            //REVIEW FROM STRING LAB!!/

// question: Oct.4th
//Given a string , use a for loop to reverse it. ex: input "hello" output: "olleh"


//let message = "hello"
//for char in message

var aString = "Tiffany Obi"
var empty = ""

// let emptySpace = " "
// let empty = ""

//if emptySpace.isEmpty {
//print("emptySpace isnt empty")}
//}else}
//print("is not empty"

//not that if you add " .description " this gives the description

for letter in aString {
    print ("letter: \(letter) empty: \(empty)")
    
    empty = String(letter) + empty
    
    print("letter: \(letter) + empty:\(empty)")

    print("=================") }
print(empty)

                            //REVIEW FROM ARRAYS LAB!!!//
//given an array of strings, find the string with the most a's in it
//input:["apes","abba","apple"]

let arr = ["apes","abba","apple","blaaaaaah"]

// the question is basicall asking us " how do we keep track of the string with the most "a" characters?

var overAllCount = 0
var stringWithMostAs = ""
for str in arr {
    //in the future we can use filter{} here
    //we will create a local variable for keeping track of a's in current string.
       var localCount = 0
        for char in str {
        // String.Element is the same as Character
            if char == "a" {
                localCount += 1
            }
    }
    // comparing a's count
    if localCount > overAllCount { // 1st time looking at apes, apes is more
        overAllCount = localCount // overide over count and give it the new value
        stringWithMostAs = str // also overide the string that contains what im look for
    }
        
}
print("\(stringWithMostAs) has the most a's with a count of \(overAllCount)")

                        // ARRAYS!!!!!!!!!!! cont. ///
print("test")

var musicalArtists = ["Beyonce","Bob Marley","Da Baby","John Meyer","Lauryn Hill","Mos Def",]

let artist = musicalArtists[2]
print("currently playing is \(artist) in Spotify")

//array slice
// a view of the array

let favoriteSArtists = musicalArtists[1...3]
 print("My favorite artists are \(favoriteSArtists)")

//  modify the value of an array usuing sub scripting
musicalArtists[1] += "(The Singing Diva)"
print(musicalArtists)

// replace a value at an index

musicalArtists[musicalArtists.count - 1] = "Prince"
print(musicalArtists)

for artist in musicalArtists {
    if artist == "John Meyer" {
    print("Acoustic Genius")
        break
    }
    print("Looking for my Johnny, where is my johnny")
}

// tuple review

let Artist = (name: "Lauryn Hill", genre: "Soul")
let Aartist = (name: "Beyonce", genre: "Soul, Pop, Soca")
let groupArtists = [Artist, Aartist]

for aaartist in groupArtists {
print(" my favorite artist is \(aaartist.name)")
}

                    // MULTI- DIMENSIONAL ARRAYS //
let matrix =    [[1,2,3],
                [4,5,6],
                [7,8,9]]
// matrix is like a grid but the name is actually multi-dimensional array
//print out the count on multi- dimensional array
print("current count is \(matrix.count)")

for arr in matrix {
    for num in arr {
        print(num, terminator:" ")
    }
    print()
}
let firstInnerArray = matrix[0]

print ("the first array in matrix array is \(firstInnerArray) ")

// print out last element
var lastInnerArray = matrix[matrix.count - 1]

print("the last element in matrix array is \(matrix[matrix.count - 1])")
for arrr in lastInnerArray {
    print (arrr, terminator:" ")
}

print()
print()
                    //ARRAY HOMEWORK CONT.//

//Print out how many non-whitespace characters are in `myString`:

var mySting = "This is good practice with Strings!"

var nonWhiteSpaceCount = 0
var nonWhiteSpace = "i"
var whiteSpace = 0
for char in mySting {
    if nonWhiteSpace {
        nonWhiteSpaceCount+=1
            }
    else{
        whiteSpace+=1
    }
}
    
print(" \" \(mySting) \" has \(nonWhiteSpaceCount) 'non-whitespace characters' in it and \(whiteSpace) 'other spaces'")
