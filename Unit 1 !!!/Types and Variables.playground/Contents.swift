import UIKit

var str = "Hello, playground"
// the compiler ignores the any information after the two forward slashes because its a comment
// declared a viable fellowName of type string. data types: String, Int is short for integer
//type inference : implicit declaration of a varisble
var fellowName = "David Lin"


//type annotation- : explicitly writing or defining the data type usuing : (colon)
var cohort: String = "iOS 6.3"


var alpha = "c"
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
//==================================================================

print("Age of fellow 8 years from now is \(futureAgeOfFellow)")

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
//++++++++++++++++
//Constants
//+++++++++++++++++

let pi = 3.14

