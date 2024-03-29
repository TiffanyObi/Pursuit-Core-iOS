import UIKit

var str = "Hello, playground"
// the compiler ignores the any information after the two forward slashes because its a comment
// declared a viable fellowName of type string. data types: String, Int is short for integer
//type inference : implicit declaration of a varisble
var fellowName = "David Lin"
fellowName = "Chelsi Christmas"


//type annotation- : explicitly writing or defining the data type usuing : (colon)
var cohort: String = "iOS 6.3"

let fullName = "Alex" + " Paul" // the outcome becomes Alex Paul // must add a space after the " after the plus sign so that the space shows up between first and last name
print("Person's full name is \(fullName)")
// usins string interpolation we are printing fullName's description
let lowerCaseName = "alex"
let upperCaseName = "Alex"
let stringResult = lowerCaseName == upperCaseName
let alphabeticalOrder = "Kelby" < "Lorraine"
print("Alphabetical Order result is \(alphabeticalOrder)")
//******************************************************************
//                            CHARACTER
//***************************************************************
// the difference between a string and a character is the type annotation (the colon and specificity of the type - to character))
var alphabet: Character = "c"


cohort = "7.0"
// ******************************************************************
//                                  INTEGER
//******************************************************************

var age = 23
// another way to write this
var ageOfFellow = 32
// we dont need quotes for integers and you can do arithmic calculations with integers
var futureAgeOfFellow = ageOfFellow + 8
//interger division truncates decimals. truncate means to eliminate.
let intergerDivision = 16 / 3
print("interger division is \(intergerDivision)")

let floatingPointDivision = 16.0 / 3.0
print("floating division is \(floatingPointDivision)")
    
//==================================================================

print("Age of fellow 8 years from now is \(futureAgeOfFellow)")

//__________________________________________________________________________________________-
//                   YOU CANNOT DIVIDE 0.THE APP WILL CRASH EX. 89/0 DOES NOT COMPLILE_
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~----------------------------------

//______________________________________________________________
//          FLOAT VS. DOUBLES
//------------------------------------------------------------
//A DOUBLE HAS DOUBLE THE PERCISION SPACE THAN FLOAT
let floatNum: Float = 67.84987857394793947
let doubleNum = 67.84987857539579
print ("float is \(floatNum) and double is \(doubleNum)")

//you canna add a float to a double . it wont compile.
let accountBalance = Double(floatNum) + doubleNum
// above we are casting (converting) a float to a double
print ("Account balance is now \(accountBalance)")




//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
//                              DOUBLE
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
var balance = 100005.9

balance = balance + 85000
print(balance)

balance -= 180000

// the balance = balance and balance-= is the same


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
// BOOLEAN - BOOL, Comparison / Operators
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

var result = 70 < 100
print(result)
var otherResult = result && true

print(otherResult)

-5 > -2 && 3 >= -5
//=============================================================
//              ARITHMETIC OPERATORS
//++++++============++++++===========+++++========++++++========

var salary = 20000
salary *= 2
// this is the same as saying salary x 2
print(salary)


// THIS WONT COMPILE BECAUSE LET IS CONSTANT
//let money = 200
//money *= 2

var marathonTime = 600
//hours
marathonTime /= 2

// __________________________________________________________--
//                  MODULO OPERATOR OR REMAINDER
//++++++++++++++++++++++++++++++++++++++++++========+++++++===

var modResult = 16 % 3
print(modResult)

var even = 12 % 6
print(even)
//++++++++++++++++____
//                                              Constants
//+++++++++++++++++

let pi = 3.14
/*swift was introduced in 2014. iphone came out in 2007. by 2008 people were writing code and makking apps. swift is a type safe language. */




