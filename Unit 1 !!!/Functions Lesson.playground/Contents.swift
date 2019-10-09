import UIKit

var str = "Hello, playground"

// FUNCTIONS !! //
/*
 Vocabulary-
 -function:
 -argument
 -parameters, internal, external
 -input
 -output
 -function definition - description of the function
 -calling a function or invoking a function
 */

//      FUNCTION SYNTAX    //
func myFirstFunction () {
    print("Happy Hump Day🐫")
}
// cal or invoke or execute our myFirstFuntion

myFirstFunction()
// number is an external parameter name. while x is an internal parameter name
// Int is the data type of the function's input
// Int is also the output of this function
// return the type syntax is ->
func doubleNumber(number x: Int) -> Int {
    let result = x * 2
    return result
}
let resultOfCalculation = doubleNumber(number: 10) //function takes one argument of type Int, output returned is of type Int
print(resultOfCalculation)

// write a function that adds 2 to a number, then triples that number

func practiceEquation(number y: Int) -> Int {
    return (y + 2) * 3
    
}
let equationSolved = practiceEquation(number: 4)
print(equationSolved)

for _ in 0...3 {
    print(practiceEquation(number: 1 ))
}

// write a fucntion that adds an exclamation mark to a string

func practiceWithString(word: String) -> String {
    return  word + "!"
}
let name = "Tiff"
print(practiceWithString(word: name))

// Optional types on fucntions //
func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
    
    var profileCompleted: Bool?
    
    if let _ = age,
        let _ = employmentStatus {
        profileCompleted = true }

    return profileCompleted
}


if let profileComplete = githubProfile(age: nil, employmentStatus: nil)  {
    
    print("Profile complete") }
else{
    print("Profile incomplete")
    
    
}

