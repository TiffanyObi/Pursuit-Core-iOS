import UIKit

var str = "Hello, playground"
// we define an optional as - being used to indicate that a value MAY exist
//two possible outcomes. outcome 1: is there IS a value and it can be used.
//                       outcome 2: is there isnt a value, in Swift terms .. its "nil"

/* these are exapmple of what they would look like
 String?
 Bool
 Int?
 Double?
 Character?
 
1.- forced unwrapping = an ! is one way to unwrap an optional
2.- nil- coelescing = ?? 23 ( note that the value behand the two question marks is whatever you choose
3.- optional binding = if let bindingValue = optionalValue {.. we can use binding value here...} else {....}
 4.- implicit unwrapping e.g var name: String!
 */


let response = "27" //"twenty seven"
var age = Int(response) ?? 23
age + 10

if let yourAge = Int(response) {
    print("the age you entered is \(yourAge)")
}else {
    print("the response in nil")
}
let firstName = "John"
let lastName = "Appleseed"

// enter code below

let fullName = "/(firstName)";"/( lastName)"

