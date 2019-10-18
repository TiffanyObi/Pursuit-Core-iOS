import UIKit

var str = "Hello, playground"

// Question Review

// Dictionary question

// given an array of integers, return a dictionary of occurences of each intergers
/*
 input: [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]
 ex expected output:[1:4, 2:1, 3:3, 4:1, 7:1, 8:2]
 */

//step one - create a function  not [:] is the form for a dictionry
//note the input is an array of integers and the output is a dictionary with keys that are ints and values that are ints.

func occurenceOfIntergers (arr:[Int]) -> [Int: Int] {
    
    var frequencyDictionary = [Int: Int]()
    
    // first time visiting a number, we want to set the count to 1.
    
    
    for num in arr {
        //let testType = frequencyDictionary[1]
        // testtype is an optional Int?
        // using optional bimdimg to unwrapp the value at the given key in our frequencyDictionary
        // enter if let statement if we have seen the number already
        
        if let count = frequencyDictionary[num] {
            
        frequencyDictionary[num] = count + 1
            
        } else {
            
            // first time visiting a number, we want to set the count to 1.
            
            frequencyDictionary[num] = 1
            
            // appending of an element in a dictonary happens here
        }
    
    // next time we visit a number that appears in our dictionary we want to increment the count
    
    }
    return frequencyDictionary
}

let results = occurenceOfIntergers(arr:[1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8])

print(results)


// Question 2
// write a function called LargestValue(in: ) that finds the largest the Int in an array Ints. Use reduce to solve this exercise.

func largestValue(in numbers: [Int]) -> Int {
    
    //var result = 0
    
// using guard to get the first element in an array or sure that a array is not empty
    
  //  guard numbers.count > 0 else { return -1 }
    
    guard let first = numbers.first else { return -1 }
    
  /*  // note that .first works on all collections to find the first element
    
    
    if let first = numbers.first {
        first
    } else {
        first
    }
    */
    // note trainling closure syntax is "{first argument, second argument in (then a condition) }"
   let result = numbers.reduce(first) { prevValue , currentValue in
        // .reduce to go thru every element in the array
    
        if prevValue > currentValue {
            return prevValue
    } else {
            return currentValue
        }
    }
    return result
}
let largestResult = largestValue(in: [56,12,45,7689,42,45678])
print(largestResult)

// more practice //

// create a funtion that returns how many vowels are in a given string

var sampleString = "Hello there! How is it going?"


func numberOfVowels (in mysteryString : String) -> Int {
    let vowels: Set<Character> = ["a","e","i","o","u"]
    var numVowel = 0
    
    for char in mysteryString {
        if vowels.contains(char) {
            numVowel += 1
        }
    }
  
    return numVowel
}
let finalAmountAnswer = numberOfVowels(in: sampleString)
print(finalAmountAnswer)

//Write a function that returns the product of an array of Ints with any zeros taken out

var sampleInput = [4,0,8,3,0]

func filterMultiply (numArray: [Int]) -> Int {
    var notZero:[Int] = []
    for num in numArray {
        if num != 0 {
            notZero.append(num)
        }
    }
   let product = notZero.reduce(1, *)
  return product
}
let finalResult = filterMultiply(numArray: sampleInput)
print(finalResult)


 //All Ints appear twice in an array, but one element appears only once. Find the outlier.

 //Sample Input: [4,0,7,8,3,0,4,3,8]

 //Sample Output: 7
 

//var arrayOfNumbers = [4,0,7,8,3,0,4,3,8]

func findOutlier (inputArray:[Int]) -> [Int] {
    var outlier: [Int] = []
    
    for num in inputArray {
        
        else {
            outlier.append(num) }
        
        }
    return outlier
}
var arrayOfNumbers = [4,0,7,8,3,0,4,3,8]

let answer = findOutlier(inputArray: arrayOfNumbers)

print(answer)


        // More Question Review (Closures Lab) //

// Question Four
// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples
// of type (String, String) and returns an array of tuples sorted by last name.
// NOTE: our input: unsorted last name array of tuples
// our output: sorted by last name tuple

// Your function here
func sortedNamesByLastName(in names: [(String , String)]) -> [(String,String)] {
    
   let result = names.sorted{ names1, names2 in
        
        // "<" here means ascending from a - z. descending would be ">". not sorted need a "return but it doesnt have to be written because it implicitly return what u put "
        
        names1.1 < names2.1
    }
    return result
}


// Uncomment out the following lines to check your solution
 let firstAndLastTuples = [
   ("Johann S.", "Bach"),
     ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
   ("W. A.", "Mozart"),
   ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
 ]
let expectedOutputFour = [
    ("Johann S.", "Bach"),
   ("Josquin","Des Prez"),
    ("Duke", "Ellington"),
    ("Scott","Joplin"),
    ("Claudio", "Monteverdi"),
    ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov")
]
print(sortedNamesByLastName(in: firstAndLastTuples))

let outputFour = sortedNamesByLastName(in: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


// More Practice

let arr = [4,5,1,-7,-99]

// using sorted() which does not take in any arguments

print(arr.filter { $0 < 5}.sorted())
            
let filteredArray = arr.filter{ $0 < 5 }
print(filteredArray.sorted())
//let sortedArray = filteredArray.sorted()

// sorted usuing closure which take in two arguments

let name = ["Alex", "Tiffany","Antonio","Genesis"]
let sortedNameUsingClosure = name.sorted { $0 > $1 }

print(sortedNameUsingClosure)


// given an array of names return all the following names uppercased
// we use map because map transform elements
// input: ["Alex","Tiffany","Antonio","Genesis"]
// output : ["ALEX","TIFFANY","ANTONIO","GENESIS"]

let inputArray = ["Alex","Tiffany","Antonio","Genesis"]

let upperCasedArray = inputArray.map{ $0.uppercased() }
print(upperCasedArray)

            // re-CREATE the built in MAP function ! //
// map will take in 2 parameters. the first parameter is an [Int] (an array of ints)
// the secomd parameter is ()->() (a closure)
func customMap (arr: [Int], closure: (Int) -> (Int) ) -> [Int] {
    var transformedArray = [Int]() // the two parenthesis is to call
    
    for num in arr {
        
        //perform transformation based on closure and result in transformed array
        
        
        
        transformedArray.append(closure(num))
    }
    return transformedArray
}
// usuing customMap function above, take in an array of numbers and return the square values of each element
let numArray = [1,2,3,4,5,6,7]
// output: [1,4,9,16,25,36,49]

let squareArray = customMap(arr: numArray) {$0 * $0}

let squaredArray = customMap(arr: numArray) { number in number * number  }
print(squareArray)
print(squaredArray)
