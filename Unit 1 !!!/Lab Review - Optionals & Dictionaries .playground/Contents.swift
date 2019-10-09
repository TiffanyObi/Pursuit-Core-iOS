import UIKit

var str = "Hello, playground"


// Questions Review: Optionals and Dictionaries
// Optionals
/*
Question 6
a. Given the variable numbers below, write code that prints "The sum of all the numbers is "
followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil,
the sum is zero.
var numbers = [Int?]() - an array of optional int's -
 
 for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
} bool.random gives true or false.
 //question A- */
//

 var numbers = [Int?]()
 for _ in 0..<10 {
     numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
     }
     
 var sum = 0
     for num in numbers {
         sum += num ?? 0
         
     }

 print("The sum of all the numbers is \(sum)")


// Question b. Using the same variable, find the average of all non-nil values.

sum = 0 // clearing sum
var nonNilValueCount = 0
for num in numbers {
    // use optional binding to unwrap num
    if let unwrappedNum = num {
        nonNilValueCount+=1
        sum += unwrappedNum
    }
}
    print("\(numbers)")
    print("The average of the \(nonNilValueCount) non-nil values is \(sum / nonNilValueCount)")
print("\n")
print("\n")
print("\n")
/*
                                Dictionaries
*/
    
// Question Four

// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.
    
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScore = 0
var personFullName = ""
for currentPersonInDictionary in peopleWithScores {
    print("currently looking at \(currentPersonInDictionary["firstName"] ?? "")")
    
    let scoreAsString = currentPersonInDictionary["score"] ?? "0"
    
    let scoreAsInt = Int(scoreAsString) ?? 0
    
    if scoreAsInt > highestScore {
        
        highestScore = scoreAsInt
        
        let firstName = currentPersonInDictionary["firstName"] ?? "noFirstName"
        let lastName = currentPersonInDictionary["lastName"] ?? "noLastName"
        personFullName = firstName + " " + lastName
    }
    print("\n")
}
print("\(personFullName) has the highest score of \(highestScore)")


var pageDict = ["Goblet of Fire": 636 , "Old Man and the Sea": 104 , "Animal Farm": 112 ]

var shortBooks: [String] = []

for (title, pageNum) in pageDict where pageNum < 200 {
 shortBooks.append(title)
}

print(shortBooks.count)
