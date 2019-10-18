import UIKit

var str = "Hello, playground"

// structs: is a nuilding block of a method in which we emulate an "object" in Swift.

// struct (basics) syntax
//SomeStruct below defines some object. remember its UpperCamelCased
//Object oriented programmimg (OOP) - encasulates properties and methods on real world objects

struct SomeStruct {
    
// definition of the struct includes the following
    
    /*
     - properties : variables or contants on the type (struct)
     -methods : function inside of a custom type (struct)
     -initializers : the mothod in which you create the type
     */
    
}

struct Resolution {
    // properties
    // stored properties - a property with a default value
    // a property is a variable or a constant
    
    var width = 0
    var height = 0
}
// create instances of Resoulution (struct)

var someResolution = Resolution()

// accessing properties of Resolution using . (dot syntax)

someResolution.width = 1080
print(someResolution)



// below we see that structs have a memberwise initializer as oppose to class that does not.
// remember a memberwise initializer an not be used on a class

 var vga = Resolution(width: 640, height: 480)

print(vga)


/*
            Structs and Enums are *** VALUE TYPES ***
 note : array, strings, int are value types.
 */

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd // cinema gets a copy of hd. this copy does not change the original. think of it as forking.

cinema.width = 2048
print(cinema)
print(hd)


    // Using Object-Oriented Programming to Model a Fellow //

enum ProgrammingLanguage {
    case swift
    case java
    case objectivec
    case python
    case javascript
    case nolanguage
}

struct Project {
    var projectName = ""
    var projectDescription = ""
    var programmingLanguage = ProgrammingLanguage.nolanguage
}

struct Fellow {
    
    // properties - attributes (var and / constants as needed)
    
    var name = "Johnny Appleseed" // this is now a stored property
    var cohort = 0.0
    var progammingLanguages = [ProgrammingLanguage]()
    var githubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]() // projects
    
    // initializers
     
    
    // methods - actions
    /*
    - class methods
    -instance methods
     */
    
    //instance method below
    
    func info() {
        print("\(name) currently has \(projects.count) portforlio project(s)")
    }
    
    func resume(language: ProgrammingLanguage){
        if self.progammingLanguages.contains(language) {
            print("\(name) can be hired for this \(language)")
        } else {
            print("\(name) is not qualified for this position")
        }
    }
}

// creating instance of " objects "
// creating an instance using the default initializer of Fellow()

var gregg = Fellow()

//print(gregg.name)

gregg.name = "Gregg"
gregg.cohort = 6.3
gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command-line macOS application", programmingLanguage: .swift))

gregg.info()


// instance of Project

let calculatorApp = Project(projectName: "Calculate App", projectDescription: "Calculator in mac Os command-line apllication", programmingLanguage: .python)


// creating oscar is where we made an instance of Fellow
var oscar = Fellow(name: "Oscar", cohort: 6.3, progammingLanguages: [.swift], githubURL:"https://github.com", linkedInURL: "https://linked.com", hasProgrammingBackground: true, projects: [Project]())

// add 2 projects to oscar's portfolio

// using memberwise initializer
oscar.projects.append(Project(projectName: "Text Adventure", projectDescription: "Text Adventure mac OS command-line ", programmingLanguage: .javascript))

// usuing an instance we created
oscar.projects.append(calculatorApp)



// calling to our functions

oscar.info()
oscar.resume(language: .javascript)
oscar.resume(language: .swift)

