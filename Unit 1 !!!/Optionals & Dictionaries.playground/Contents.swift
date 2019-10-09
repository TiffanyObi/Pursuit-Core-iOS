import UIKit
/*
var str = "Hello, playground"

//optionals: is a type that represents two possibilites
//       either we have a value or we do not have a value (nil).
// swift data types support optionals e.g
/*
string
*/
//===============================================
//    introduction to optionals
//===============================================
var name: String = "alex"
print(name)
var age: Int? = 21 // question mark signifys that it is optional
// optional int with default value of nil
print(age) // nil does not have a value
var num = Int("its monday ")// optional int
//===============================================
//     ways to unwrap optionals
// 1. forced un wrapping using a exclamation mark ! or some programmers refer to it as banging
// 2. nil-coalescing using two question marks ?? followed by a defalt value that was provided
// 3. optional binding using if let where a value us assugned the esisting if one is available
//4. implicit un wrappi e.g var
//===============================================
//===============================================
//      forced unwrapping
//===============================================
let decadeFromNow = age! + 10 // can not add Int? + int
print(decadeFromNow)
// to be used sparingly ONLY when you the deleoper is Guarenteed a value at run time
//===============================================
//     nil-coalescing
//===============================================
var temperature: Int? = 75 // degrees
let validTemperature  = temperature ?? 67 // 67 is the default value in the case temperature is nil
print("temperature is \(validTemperature)")
//var cohort: Int? = 4
//var nextYearCohort = (cohort ?? 5) + 1// how to add ints
//
//print("pursuit next cohort will be \(nextYearCohort)")
var cohort: Int?
var nextYearCohort = (cohort ?? -1)
if nextYearCohort == -1{
   print("something went wrong with the application")
}else{
   print("everything went well")
}
print("pursuit next cohort will be \(nextYearCohort)")
//===============================================
//  Optional  binding : if let, while let
//===============================================
var wage: Int? = 40_000 // dollars
var year: Int? // nil by default is a value is not provided
// if let unwraps the wage vairable, if it does have a value then that value gets assigned to the bindedvalue costant
// if if let this wage
print("out here")
// validewage is 40000
// validyear is nil
if let validwage = wage ,
   let validYear = year {
// we only enter the iff let block{.....} if Wage is NOT Nil
// Only if wage has a value
// if wage has a value the if let is true
// if wage is nil the if let is false
print("you entered \(validwage) as your wage in the current year of \(validYear)")
}else{ // else condition us false or wage is nil
   print("values are unavailable")
}
//===============================================
//     testing  optional for equality
//===============================================
var someValue: Int? = 7
if someValue == 7{
print(" \(String(describing: someValue)) is equal to ")
}
//===============================================
//     looping through and optional array
//===============================================
var numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]
// add Only valid or non Nil integers
var sumUnwrappedUsingoptionalbinding  = 0
var sumUsingNilCoalescing = 0
for num in numbers {
   if let validNum = num { // optional binding to unwrap the current num
       sumUnwrappedUsingoptionalbinding  += validNum
       //using nil-coalescing
   sumUsingNilCoalescing += num ?? 0
   }
}
print("the sum of numbers using optional binding  \(sumUnwrappedUsingoptionalbinding) ")
print(" the sum of numbers using Nil- coalescing  \(sumUsingNilCoalescing)")


/*
                    DICTIONARIES!!!!
 */

// dictionary : a collection of key - value pairs  the key needs to conform  the hashsable protocal , this simply means the key needs to be made unique by a hashing algorithm made up of a key and a value pairs   // a collection whose elements are key value pairs
// Hashable is going to a value that is unique based on a key given
// all keys need to be unigue and they need to be hashable they can not be reused
// it is a type of hash table providing fast access to the entries it contains
// string INT are both hashable
// dictionaries are unordered collections
let name = "alex"
let hashValue = name.hashValue
print("hash value \(name) is \(hashValue) ")
// ====================================
// initializing and popoulating dictionaries
//=====================================
//method 1: uses the initialization method
// declared a initialized an empty dictionary
// key is of type Int
// value is of type String
var nameOfIntegers = [Int: String]()
// count number of elements in nameOfIntegers
// count is a property on the collection protocol
// dictiory , arrys and sets conform to collection
// a property is a variable or constant on a type
print("there are \(nameOfIntegers.count) elements currently in the NameOfIntegers dictionary")
//assign a key- value (element) pair to nameOfIntegers
nameOfIntegers[16] = "sixteen"
print(nameOfIntegers)
print("there are \(nameOfIntegers.count) elements now")
// count numeber of elements in nameOfIntegers

\
// practice
nameOfIntegers[5] == "five"
print(nameOfIntegers)
// can we index the first element using [0]
// the code below says find me the value where the key is 0
let num = nameOfIntegers[0] ?? "zero"// because our key is an Int
print("num is \(num)")
////struct Person: Hashable {// person is confromed to hasahable using : to conform and then state Hashable that is the only way to make the word PERson into an Int
//let personDict = [Person: Int]()
//
//method 2:
//var airports: [String: String] = [:] - valid empty dictionary
var airports : [String: String] = [" copenhagen": "CPH",
                                  "Los Angeles": "lax",
                                  "saint Lucia": "LCU"]
print("there are \(airports.count) airports currently")
//====================================================
//     accessing dictionary values
//====================================================
// we also have an is empty property on dictionary
if airports.isEmpty {
   print("airports is empty")
}else{
   print("there are \(airports.count) airports")
}
//====================================================
//    loopping through a dictionary
//====================================================
let bucketLists: [String: String] = ["sweden": "stockholm", "Austrailia": "cairnes", "mexico": "cozumel", "new Zealand": "wellington", "morrocco": "cassablanca"]
for (country, place) in bucketLists {
   print(" i want to visit \(place) located in \(country)")
}
let destination = bucketLists["new Zealand"] ?? "unknown destination"
print("print you destination is \(destination)")
let favoriteAlbums = [" john mayer": " room for squares", "post mallone": "stoney", "tupac": "all eyesz on me " , "drake": "take care " ,"teyana": "k.t.s.e"]
// given album name , find the artist we must use a for-in  loop to search for a given value
var artistName = ""
for ( currentArtist, albumName) in favoriteAlbums{
   if albumName == "stoney"{
       artistName = currentArtist
   }
}
print("\(artistName) created the stoney album")
// get vales from a dictionary
// extracting all the values from the favorite albums dictionary
let albums = Array(favoriteAlbums.values)
for album in albums {
   print("albums in \(album)")
}
// get key from a dictionary
let artists = Array(favoriteAlbums.keys)
for artist in artists {
   print("artist is \(artist) ")
}
// dictionaries are unsorted so we will demo how to sort the values and print in a sorted manner
// question: given albums , sort by Artist name
// sorted by defalt is ascending = means a - z meaning alphabetical
// decending is z - a .reveresed with list it in decending
for artistName in favoriteAlbums.keys.sorted().reversed() {
print("artist name sorted is \(artistName)")
}
*/
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

if let removedGenre = favoriteGenres.remove("Classical") {
print(removedGenre)
print("\(removedGenre)? I'm over it.")

} else {

print("I never much cared for that.")

}
