import UIKit

var str = "Hello, playground"
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
