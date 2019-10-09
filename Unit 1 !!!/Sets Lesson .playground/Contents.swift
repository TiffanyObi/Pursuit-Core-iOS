import UIKit

var str = "Hello, playground"

// Sets: a collection type -: an unordered collection whose elements are unique
//note- we must type annotate a set to be a set or the computer will assume that its an array
/*
            INITIALIZING AND POPULATING A SET
 */
var accountNumbers: Set<Int> = [] // type annotation
var accountNumbers2 = Set<Int>() // type initialization
var accountNumbers3: Set = [285704028, 239853393, 3207085] // type annotation with literals


// Heterogeneous Array //
var mixedArray : [Any] = [4852973,"Tiff",false]
for element in mixedArray {
    if let num = element as? Int { //optional casting
        print("the num is \(num)")}
    if let str = element as? String {
        print("string is \(str)")}
    if let bool = element as? Bool {
        print("bool value is \(bool)") }
    }

                /* ACCESSING VALUES IM A SET */
//is empty
if accountNumbers.isEmpty {
    print("accountNumbers is empty")
}

//count
print("There are \(accountNumbers3.count) elements in accountNumbers3")

//
let colors = Set(["blue","white","red","yellow","white"])

print(colors)

/*
            Using contains to find an element in a set
 */

let fellows: Set<String> = ["Christian", "Gregg", "Maitree", "Joshua"]
for fellow in fellows {
    print(fellow)
}
if fellows.contains("Christian") {
    print("found fellow")
}

/*
                PERFORMING SET OPERATIONS
 */

let a : Set<Int> = [1,2,3,4,5,6]
let b : Set<Int> = [5,6,7,8,9,0]

// intersection
let intersection = a.intersection(b).sorted() // ascending is the default order for sorted() - you

print(intersection)

// symmetric difference

let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference)

// union

let union = a.union(b).sorted()
print(union)

// subtracting

let subtraction = a.subtracting(b).sorted()
print(subtraction)



