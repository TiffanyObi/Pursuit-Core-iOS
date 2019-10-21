import UIKit

var str = "Hello, playground"

/*
                Structs, Classes, and Initialization
 
 *****Differences between classes and structs.*****
 
 Structs: have a memeber wise initializer, classes do not
 Classes: have to provide an initializer (using init) id Any of its properties do not have default values.
 Classes have inheritance and structs do not

Struct: due to the nature od the immutabilityh of s struct, if you are in a function that  modifies one of it porperties, that method needs to be explicitly marked "mutating". in classes this is not neccesary because classes are passes by references which make them mutable ny default.
 
 */

struct Fellow {
// structs holds properties
    
    // type properties, class properties, static properties
    static let currentYear = 2019 // Fellow.currentYear compiles
    
    // instance properties
    var age: Int // ex: yulia.age compiles but not Fellow.age
    var cohort: Double
    var currentlyEmployed: Bool
    
    // initializers if any
    
    
    // type methods. class methods, static methods
    static func programmingInfo(){
        print("This is a 10 - month intensive program")
    }
    
    
    

    //instance methods // example of updating a var inside a struct.
   mutating func employee(isEmployed: Bool) {
        
        currentlyEmployed = isEmployed

    }
}

// accessing a type method programInfo().
Fellow.programmingInfo()


print("Pursuit fellows current year is \(Fellow.currentYear)")
    
print(Int.max)

// Int.max is known as accessing an (Type property)
//ex: .max only works on the ((type)) Int, NOT an insrance of int.


let someInt = 0
// someInt.max // Does Not compile because and instance of Int cannot call type property.
// making use of structs member wise initializer

var yulia = Fellow(age: 35, cohort: 6.3, currentlyEmployed: false)

if yulia.currentlyEmployed {
    print("When are you taking me out to lunch")
} else {
    print("Lunch on me today")
}

class Animal {
    // note if a default value is assigned to a var it does not need to be initialized in init again.
    
    var age: Int
    var breed: String
    var color: String = "white"
    init(age:Int, breed: String) {
        self.age = 21
        self.breed = "Pitbill"
    }
    
    // instance METHOD
    func info() {
        print("The \(breed) is \(age) years old and the color is \(color)")
    }
}

//Dog is a subclass of Animal

class Dog: Animal {
    
}

let frenchBulldog = Dog(age: 11, breed: "French Bulldog")
frenchBulldog.info()
