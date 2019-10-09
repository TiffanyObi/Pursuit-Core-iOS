import UIKit

var str = "Hello, playground"
// String - a collection of unicode compliant characyers
/*
 Vocabulary-
 - unicode
 -character
 -literal String ex: "hello"
 */
//declaring and initializing a literal string
var message = "Good moring iOS"

for char in message {
    print("characeter in \(char)")
}
print("message count in \(message.count)")

"Tiffany".count
// .count is a property

/*
                                        UNICODE
 */
//  example - a space in unicode is represented by U+0020
// a character is made up of one or more scalars


let name = "Ti\u{301}ffa\u{301}ny"
// unicode is replesented by \u{code#}
 
let unicodeLowerCaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowerCaseE == eCharacter {
    print("they are equal")
}

// accessing and modifying String

let programmingLanguage = "Swift"
let fellows = ["Kelby", "Strephanie"]
fellows.count // 2
let firstFellow = fellows[0]

// goal is to access first character in string "Swift" == S
let firstIndex = programmingLanguage.startIndex
let firstCharacter = programmingLanguage[firstIndex]
print("first character in \(programmingLanguage) is \(firstCharacter)")

// goal is to access the last character in string "Swift" == t
let endIndex = programmingLanguage.endIndex
let lastCharacterIndex = programmingLanguage.index(before: endIndex)
let lastCharacter = programmingLanguage[lastCharacterIndex]
print("The last character in \(programmingLanguage) is" , lastCharacter)

/*
                        MAKING A RANGE USING INDICES
 */

// usuing a for-in loop pring out the first 6 characters in the alphabter
 let alphabets = "abcdefghijklmnopqrstuvwxyz"
var counter = 0
for char in alphabets {
    if counter < 6 {
    print(char)
    counter += 1
    }else {break}
}
print ("for loop has ended")
// using a for-loop and enumerated print the fist six alphabets
for (index, char) in alphabets.enumerated() { // alphabet.enumerated allowd you to go inside index and use the index, alphabet
    if index < 6{
print ("\(char) at index \(index)")
} else {
    break}
}
/*
                                MULTI-LINE STRINGS
 */
let multilineString = """
Hey
hey
hey
"""
print(multilineString)
//you can use any ascii art as long as its inside of a multiline stringg

// practive from homework= question: given a string switch on it and print all the characters if it is even or print every other character if its odd

let Message = "Good Afternoon!"
print("there are \(Message.count) characters in the string")

if Message.count % 2 == 0 {
    print("string is even")
}else{
    print("string is odd")
}

// this part answer the question specifically

switch Message {
case Message where Message.count % 2 == 0:
    for char in Message {
        print(char, terminator:" ")
    }
default:
    for (index,char) in Message.enumerated()
        where index % 2 == 1{
            print(char, terminator:" ")
}
}
/*
            ESCAPE CHARACTERS = "\n"- newline : "\t" - tab : "\"" - quote
 */
// declaring and initializing a character
let char: Character = "c"

// initializing a string from a character
let stri = String(char)

// initializing a string from an interger (Int)
let currentYear = String(2019)
print("current year is \(currentYear)")


let float: Float = 23.56
let double = 45.12
let result = Double(float)+double
print(result)
/*
 string formar ex. formatting decimal places
 */
print("the result of the calculation above is",
    String(format: "%.2f",result))

// ================================================
//        creating a range on a string
// ================================================
let messageToSelf = "i really love Swift, and i'm passionate about coding."

// getting the first position of messageToSelf

let startIndex = messageToSelf.startIndex
let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)

let range = startIndex...offsetToSomeCharIndex

//  DOES NOT COMPILE, SUBSCRIPT [Int] NOT ALLOWED USING AN INT, ONLY WORKS ON A [STRING.INDEX] TYPE
//let substring = messageToSelf[0]
let substring = messageToSelf[range]
print("substring is \(substring)")

/*
 find or search for the index of a chcracter in a string
 */
let swiftMessage = "i really love Swift ❤️ "
let charIndex = swiftMessage.firstIndex(of: "t") ??
swiftMessage.startIndex

print("We found \"\(swiftMessage[charIndex])\" in the swiftMessage String")
/*
                            SUFFIX AND PREFIX
 */
// has prefix
let namee = "Alex"

if namee.hasPrefix("Al") {
    print("Hi Al")
}
// has suffix
let message2 = "questions"
if message2.hasSuffix("ions"){
    print("we also have onions")
}
// contains
if message2.contains("q"){
    print("message2 contains q")
}
//// / / / / / / /  / / / / / / / / /   BACK TO ESCAPE CHARACTER EXAMPLES / / / / / / / / / / / / / / / /
// newline example
let newLineMessage = "Hello\niOS 6.3\nGreat to have you!"

// tab example
let tabMessage = "\tProgamming is fun"

// quote example
let quote = " In \"2014\" Swift was introduced"

/*
                            SOME CHARACTER PROPERTIES
 */
let character1: Character = "y"
if character1.isLetter {
    print("\(character1) is a letter")
}
//other examples
// isCurrency ex = $
// isPunctuation ex = ?
// isNumber  ex = 4

/*
    NSSTRING IS AN OBJECTIVE -C API : API = APLLICATION PROGRAMMING INTERFACE
 */
var message4 = "coding"

message4 = message4.replacingOccurrences(of: "g", with: "🚀")
print("\(message4)")

let fullName = "Tiffany Obi Chalmers"
let seperatedNames = fullName.components(separatedBy:" ")
print("there are \(seperatedNames.count) items")
print(seperatedNames)
