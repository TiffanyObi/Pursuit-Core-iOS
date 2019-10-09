import UIKit
import Foundation

var str = "Hello, playground"
//  ______________________________
//
// Control Flow, Tuples . If / else statements - this is the block of code {in these curly brackets}
// _______________________________
/*example 1-
 
 if (some condition is true) {
 execute this block of code
 } else {
 someting other statement will get executed
 }
 
 example 2- if (some condition is true) {
 excecute this code
 }
 if the if statement is not true then then it will get skipped
 
 example 3 -
 
 built in functions weve seen so far:
 print()
 lowercased()
 round()
 .
 */
var day = "Friday"//.lowercased()
if day == "friday" {
    print("woohoo TGIF 🤡")
}
print("control flow is cool")

/*
                            If/ Else Pratice
 */

day = "Monday".lowercased()

if day == "saturday" {
    print("its a beach day")
} else {
print("just another day")
}
/*
                    if / else if / else ( nesting )
 */

var temperature: Double = 185

if temperature < 45 { // scope of the if block is within the curly. double clicking shows the entire block- try to stay from pyramids.
    print("it's cold dont forget your gloves")
} else if temperature==85 {
print("this is my kind of weather")
} else {
    print("the temperature for today is \(temperature)")
}

/*
                            TERNARY OPERERATOR - means 3
 ex: (condition- means evaluates to true or false)
    (condition) ? execute if true: excute if false
                                vs
    if (condition) {
 execute this code
 } else {
 some other code
 }
 */

var age = 19

print(age >= 20 ? "you can have that drink" : "no drink for you" )

/*
                                SWITCH STATEMENTS
 */

var cohort = "web"
switch cohort {
    case "iOS":
    print("iOS is awesome")
case "android":
    print("droid.....")
case "web":
    print("full stack dudes and dudettes")
    fallthrough //allows program to continue to the next case- passes the case and jus prints the statement. DRY - DONT REPEAT YOURSELF
case "backend":
    print("python is cool")
default:
    print("not part of Pursuit")
}

/*
                            SWITCH STATEMENTS ON RANGES
 */
let classNumber = 6.3 // 2.3 from Coalition for Queens (C4Q) prior to changing to Pursuit
// let ageRequirement = 18...35 - this is a CLOSED range. where 18 is the lower bound and 35 is the //upper bound
// let halfRangeExample = 18..<35 - this is a half range where 35 is not include. not decimals are //also valid
switch classNumber { // note- you can switch on Bool, Int, Double, Character, String
case 0..<2: // half open range, includes 0 and 1, not 2.
    print("It's 2014 Coalition for Queens got founded. Now known a Pusuit, also Swift was was announced that year ar WWDC")
case 2..<3:
    print("it's 2015 and Obj C is still the leading language to write iOS apps")
case 3..<4:
    print("its 2016")
case 4..<5:
    print("its 2017")
case 5..<6:
    print("its 2018")
case 6..<7:
    print("It's 2019 and SwiftUI was introduced at WWDC in San Juan")
    
default:
    print("See you in 2020!")
}
/*
                                        TUPLES-
 */
let coordinate = (40.7429595, -73.9441102)
coordinate.0
coordinate.1
let socials = (twitter: "@alexpaul)", instagram: "@alexpaul") // can also be a variable
socials.twitter
socials.instagram

/*
                                SWITCH STATEMENTS ON TUPLES
 */
let kim = (age:19 , cohort: 6.1, Passion: "music")
let sarah = (age:23 , cohort: 6.3, Passion: "animal rights")
let lilly = (age:31, cohort: 6.2, Passion: "dancing")

let currentFellow = kim

switch currentFellow {
case (18..<21,_,_):
    print("not allowed to drink")
case(_,6.3,_):
    print("iOS is awesome")
case(_,_, "dancing"):
    print("see you at the party")
default:
    print("not a current fellow")
}

print(age >= 20 ? "you can have that drink" : "no drink for you" )

var aa = 2
var bb = 3
var cc = 2

if aa == bb || aa == cc || bb == cc {
    print("At least two variables have the same value")
} else {
    print("All variables are different")
}

var baconAge = 6 // the bacon is 6 days old
var eggsAge = 12 // eggs are 12 days old
print()
var n = 7.5

let nameAndBirthYear = ("Ant" , 1978)
switch nameAndBirthYear.1 {
case 1960..<1970:
    print("\(nameAndBirthYear.0) is in is 50's")
case 1970..<1980:
    print("\(nameAndBirthYear.0) is in his 40's")
    case 1980..<1990:
    print("\(nameAndBirthYear.0) is in his 30's")
    case 1980..<1990:
    print("\(nameAndBirthYear.0) is in his 20's")
default:
        print("")
}


if 1960..<1970 ~= nameAndBirthYear.1 {
    print("\(nameAndBirthYear.0) is in his 50's")
    
} else if 1970..<1980 ~= nameAndBirthYear.1 {
        print("\(nameAndBirthYear.0) is in his 40's")
} else if 1980..<1990 ~= nameAndBirthYear.1 {
    print("\(nameAndBirthYear.0) is in his 30's")
} else if 1990..<2000 ~= nameAndBirthYear.1 {
    print("\(nameAndBirthYear.0) in in his 20's")
} else {
print("sorry")
}

var population: Int = 70000
var message = String()

if population > 100000 {
    message = "\(population) is a large town"
} else if population < 100000 && population > 50000 {
   message = "\(population) is a medium size town"
} else {
   message = "\(population) is a small - size town"
}
print(message)

switch population {
case 100000...:
    message = "\(population) is a large town"
case 50000..<100000:
    message = "\(population) is a medium size town"
case 1..<50000:
    message = "\(population) is a small size town"
default:
    print("Ya too big or too small.. sorry")
}

let myTuple: (Int, Int) = (5, 10)

/*if myTuple.0 + myTuple.1 == 15 {
    print("Yup! It's 15!")
}else {
    print("Nope sorry! try again")
}*/

//switch myTuple {
//case ((myTuple.0) + (myTuple.1) = 15):
    print("Yes! it's 15!")
//default:
    print("Nope, sorry!")
//}

var chara = Character("c")
print("\(chara)")

var one = "one"
var one1 = "\u{006F}\u{006E}\u{0065}"

if one==one1 {
print("they are the same")
}else{
print("sorry you messed up")
}

var two = "two"
var two2 = "\u{0074}\u{0077}\u{006F}"

if two==two2 {
print("they are the same")
}else{
print("sorry you messed up")
}

var three = "three"
var three3 = "\u{0074}\u{0068}\u{0072}\u{0065}\u{0065}"

if three==three3 {
print("they are the same")
}else{
print("sorry you messed up")
}

var four = "four"
var four4 = "\u{0066}\u{006F}\u{0075}\u{0072}"

if four==four4 {
print("they are the same")
}else{
print("sorry you messed up")
}

var five = "five"
var five5 = "\u{0066}\u{0069}\u{0076}\u{0065}"

if five==five5 {
print("they are the same")
}else{
print("sorry you messed up")
}

var helloWorld = "\u{0048}\u{0045}\u{004C}\u{004C}\u{004F}" + " " + "\u{0057}\u{004F}\u{0052}\u{004C}\u{0044}\u{0021}"
print("\(helloWorld)")

let Tiffany = "\u{0054}\u{0069}\u{0066}\u{0066}\u{0061}\u{006E}\u{0079}"
print("\(Tiffany)")

let rose = "| \u{2698}"
let box = "- - - - - - - - - - -"

print("\(box)")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(rose)","\(rose)","\(rose)","\(rose)","\(rose)", terminator:" |\n")
print("\(box)")

var geographicLocation = "Brooklyn"
var adjective1 = "cool"
var pluralNoun1 = "sun showers"
var adjective2 = "strong"
var pluralNoun2 = "showers"
var number1 = 15
var number2 = 70
var articleOfClothing = "hoodie"

var madLib = "Here is tomorrow's weather report for \(geographicLocation) and vicinity. Early tomorrow, a \(adjective1)-front will collide with a mass of hot \(pluralNoun1) moving from the north. This means we can expect \(adjective2) winds and occasional \(pluralNoun2) by late afternoon. Wind velocity will be \(number1) miles an hour, and the high temperature should be around \(number2) degrees. So, if you're going out, you had better plan on wearing your \(articleOfClothing)."
print("\(madLib)")

var aString = "this string has 29 characters"
var empty = " "
for letter in aString {
empty = String(letter) + empty
}
print(empty)

 var firstname = "Antonio"
var lastName = "Flores"
print( lastName + firstname )
