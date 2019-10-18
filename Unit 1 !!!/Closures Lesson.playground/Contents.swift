import UIKit

var str = "Hello, playground"


                    // CLOSURES!!!! //

/*
 basic syntax for closures (first class citizen - passed around like a regular variable. it is a block of code that can be called in a program . similar to a function. in fact a closure is a type of function. we will see and recognize differences as we journey through this course.
 
 
 { (parameters) -> return type in
  statements
 }
 
 */
                // function review //

//
// returns void inside the parenthesis should be parameters.
//you can put -> Void after the parameters but the less code the better. internal parameter name is used in the function body definition. external parameter is used by the caller, they will see the extername name.
//default parameter value. we will set in age is 21 in the came the user or the caller of our fucntion does not provide an age we will default to showing 21.
//set default value on the data type that your interested in. ex age : Int = 21.


func printGreeting(_ name: String, _ age:Int) {
print("Good Morning \(name),welcome to iOS 6.3. Your age is \(age)")
}

// the underscore in the function allows u to strin interpolate
// call function
printGreeting("", 21)

for _ in 0..<4 {

    print("Good Friday Morning",terminator: "🥳")
}

//, terminator: "🥳")

/*
                    BACK TO CLOSURES!!!!!!
 basic syntax of a closure
 
        { (parameters) -> (return type) [in]- in without the brackets
            statements
        }

 */
//closures:
// - can be passes as function parameters
// - can be returned from a function
// - can be assigned into a variable or constant
// when u option click on greeting the () -> () is valid . its void but it just saying that in can return an empty value from an empty value.


// greeting is a closure , does not have parameters at all.

let greeting = {
    print("Welcome to Closures.")
}
greeting()

    // Closure that take parameters and returns a value //
let square = { (num: Int) -> (Int) in
    return num * num
    
}
print("the square of 876 is \(square(876)) ")

// $ only works in closures to access where parameters are located when were using integers. you can seperate parameters with commas


//refactoring square closue above to make use of shorthand closure syntax.
//$0 is for only one parameter. if you have more than one it $0,$1.. etc

let squareShorthandSyntax:(Int)->(Int) = {$0*$0}

print(squareShorthandSyntax(25))

// practice: add, subtract, multiply, and divide using shorthand closure syntax

let praticeAddition:(Int,Int)->(Int) = {$0 + $1}
 print(praticeAddition(12,4))

let practiceSubtraction:(Int,Int)->(Int) = {$0 - $1}
print(practiceSubtraction(1235,384))

let practiceDivision = {
    (num:Int,num2:Int) -> (Int) in
    return num / num2
}

print(practiceDivision(100,10))

/*
                CLOSURES AS FUNCTION PARAMETERS
 closures are "first class citizens", meaning we can pass closures into functions as parameters. similar to how we do with variables in function, we can also return a closure
 */


// the name of the closure could be anyname, here we are simply using the word "closure" but it could be anything else.


func helloGreeting(closure:(String) -> ()) {
closure("Heather")
}

 //caliing a function that takes in a closure using trailing closure syntax

helloGreeting { name in
    print("Hello, \(name) it's Friday 🚀 ")
}

// a function that has a closure passing thru it
func printClosure (action: () -> ()) {
    action()
}


//defined a closure name "closure"
let closure = {
    print("Inside printClosure's trailing closure")
}
    
printClosure(action: closure)


/*
 Built -in functions (or higher order functions ) in swift!
  use some built in higher order functions (closures)
    - map {....} - transforms a value. ex: 4 * 4 = 16
 returns an array
 
    - filter {....} - filters values based on a condition
 returns an array of collection
 
    - reduce (, +) - takes an intial value, 0 and a closure ex "+" (addition) and combines all the values and returns the result
 
    - compactMap {....} - returns non-nil values
 
    - sorted { > } - you provide a sorting closure and it returns the collection sorted accordingly
 
    - forEach {....} - similar to the for-in loop
 */

// given an array of integers , return an array where each value is squared
//exinput: [1,2,3,4,5,6]
//exoutput: [1,4,9,16,25,36]

// using functions and not maps
let list1 = [1,2,3,4,5,6]
func returnSquares(arr: [Int]) -> [Int]{
    var squares = [Int]()
    for num in arr {
        squares.append(num*num)
    }
    return squares
}
print(returnSquares(arr: list1))

// using map note: {} are trading closures
// (in this case $0 is always the current element)

let usingMapResults = list1.map {$0*$0}
print(usingMapResults)
//===================================================================

// using filter - given an array of fellows retunr only fellows where their name begin with A . this should be case-insensitive.
//exinput = ["George","Tom","Ahad","James","Daisy","Ameni"]
//exoutput = ["Ahad","Ameni"]

let arrayOfNames = ["George","Tom","Ahad","James","Daisy","Ameni"]
let filteredResults = arrayOfNames.filter{
    $0.lowercased().hasPrefix("a")
}
print(filteredResults)
//================================================================

// usuing reduce ! - given an array of integers, return the sum.
//exinput: [10, -10, 50, 20]
//exoutput: 70

let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0,+)
print(reducedResults)

//================================================================

// usign CompactMap- given an optional array of intergers return only valid intergers !
//exinput : [nil,56,12,-89,nil,nil,0,6]
//exoutput : [56,12,-89,0,6]

let list4 = [nil,56,12,-89,nil,nil,0,6]
let compactedResults = list4.compactMap { $0 }
print(compactedResults)
