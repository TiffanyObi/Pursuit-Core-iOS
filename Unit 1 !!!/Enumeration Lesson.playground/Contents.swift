import UIKit

var str = "Hello, playground"

/*
                        ENUMERATIONS!!!!!
 
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
 (in simpler terms - A GROUP OF SIMILAR OR RELATED VALUES or items)
 
 please note that basic syntax is that the key word i called "enum" then followed with a name where first letter of the name of that keyword should be UPPERCASED. this is to keep with swift coding convention. this also signifies that "enum" is a data type to the reader of your code.
 ex:
 - days of the week / months in a year
 - MTA train lines
 - number of fingers
 - compass points
 */

enum CompassPoint {
    case north
    case south
    case west
    case east
}
// create an enum of days of the week

/*enum DayOfTheWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}
*/
// create an enum of Planets

enum Planets {
    case mercury, venus, earth, mars, jupiter, saturn, uranus,neptune
}
// using a switch statement, we will switch on a enum instance

// instance of a string
let name = "Bob"


// creating sn instance of the enum DaysOfTheWeek

/*let day = DayOfTheWeek.monday // day is an instance (creation) created from an enum called DaysOfTheWeek
print(day)

var weekend = DayOfTheWeek.saturday
weekend = .sunday

// you can only initialize an instance after its been declared thru it name . as shown abouve,( you cannot var weekend = .friday ).

switch day {
case DayOfTheWeek.monday:
    print("back to pursuit")
case DayOfTheWeek.tuesday:
    print("Enums Lab due")
case .wednesday:
    print("Professional skills")
case.thursday:
    print("Into to classes")
case.friday:
    print("Classes & Calculater labs are due")
case .saturday:
    print("What should i do today?")
case .sunday:
    print("Maybe i should do some prep work for class tomorrow")
// default: default will never be exceduted because there are 7 days in a week . so the cases are all met. if there is a day missing then we use default. this takes in whatever you put in the enum. no more, no less.
}
*/
            //ITERATING (TO GO THRU STEP BY STEP SOME COLLECTION) THROUGH SOME ENUM'S CASES //
// Beverages enum is conforming to the protocal CaseIterable.
// by conforming to CaseIterable , we are able to get a count of all the cases in an enum.


enum Beverage: CaseIterable {
    case coffee, tea, juice
}

// note this is the same as

//var bev = Beverage.coffee
var tea = Beverage.tea

switch tea {
    
case Beverage.coffee:
print()
    
case Beverage.juice:
print()
default :
   tea
    
}
print(tea)

print(Beverage.allCases.count)


                // ENUMERATIONS PART 2 //


/*
 enum MTALine {
    case redLine
    case greenLine
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine
    case grayLine
}

let train = MTALine.yellowLine

switch train {
case .redLine:
    print("The 1,2,3,trains are running on time")
case .yellowLine:
    print(" The R train is not running today")
default:
    print("All trains are running normally")
}
 
 */
                // ASSOCIATED VALUES  //
/*
 
            adds more value  (types) to a case
 */
enum MTALine {
    case redLine(Int)
    case greenLine(Int)
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainname: Character, starttime: Int, endtime: Int)
    case grayLine
}

// instantiating a train using the MTALine
// below are 3 instances of our enum MTALine. rtrain,oneTrain,fiveTrain

let rTrain = MTALine.yellowLine(trainname: "Q", starttime: 2, endtime: 9)
let oneTrain = MTALine.redLine(1)
let fiveTrain = MTALine.greenLine(5)

/*switch train {
case .redLine:
    print("The 1,2,3,trains are running on time")
case .yellowLine(let trainName, let StartTime, let EndTime):
    print(" The \(trainName) train is not running ontime today. It will start running at \(StartTime)pm and will stop running at \(EndTime)am ")
default:
    print("All trains are running normally")
}
*/
        // PASSING AN ENUM THROUGH A FUNCTION //
 
func trainInformation (train: MTALine){
    
    switch train {
    case .greenLine(let nameOfTrain):
        print("Good Morning! Hoping you're day isnt too bad because the \(nameOfTrain) train isnt running all day!")
    case .redLine:
        
        print("The 1,2,3,trains are running on time")
        
    case .yellowLine(let trainName, let StartTime, let EndTime):
        
        print(" The \(trainName) train is not running ontime today. It will start running at \(StartTime)pm and will stop running at \(EndTime)am ")
        
    default:
        print("All trains are running normally")
    }
}



// using associated values - 1. create an Int value for the green line (4,5 or 6), to create a new instance of a constant name fiveTrain
// using our trainInformation() pass in the fiveTrain instance

trainInformation(train: fiveTrain)


                    // METHODS INSIDE OF ENUMS //


enum ProgrammingLanguage {
    case swift
    case python
    case objectivec
    case go
    case r
    case java
    case javascript
    
    // once there is a function inside of custom type their called methods
    // note we have to create an instance in order for us to call it outside the function.
    
    
    func info() {

        // we need to switch on an instance of ProgrammingLanguage
switch self {
    
case.objectivec:
    print("Last major update was in 2014")
case.swift:
    print("Swift was introduced in 2014")
case.javascript:
    print("Java us used to build android apps, also heavily used on Wall Street")
    default:
    print("ALL LANGUAGES ARE FUN")

        }
    }
    
    // trying another func inside enum ProgrammingLanguage
    
    func salaryInfo() {
        switch self {
        case .swift:
            print("1 million starting")
        case .javascript:
            print("Were not plating fair! 1.5 million starting")
        default:
            print("dont waste your money")
        }
        
    }
}

// SwiftLanguage is an instance of or enum ProgrammingLanguage

let swiftLanguage = ProgrammingLanguage.swift

swiftLanguage.info()
swiftLanguage.salaryInfo()

let javascriptLanguage = ProgrammingLanguage.javascript
javascriptLanguage.info()
javascriptLanguage.salaryInfo()

                        // RAW VALUES //
enum Day: Int {
    case sunday = 1
    case monday
    case tuesday = 4
    case wednesday
    case thursday = 7
    case friday
    case saturday = 3
}

print(Day.monday.rawValue) // default starting case of an Int rawValue is 0.

// nil-coelescing to unwrap snum rawValue type

let weekend = Day(rawValue: 6) ?? Day.friday
print(weekend)


// optional-binding to unwrap optional enum

if let possibleDayOff = Day(rawValue: 9) {
    
    switch possibleDayOff {
        
    case.saturday:
        print("You have rehearsal")
    case.sunday:
        print("You have Church!")
    default:
        print("No days off for you")
    }
} else {
        print("ERROR NOT A VALID CHOICE")
}


