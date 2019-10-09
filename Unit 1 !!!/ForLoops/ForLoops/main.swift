//
//  main.swift
//  ForLoops
//
//  Created by Tiffany Obi on 9/30/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 FOR - IN Loop
 */
for num in 1...10 {
    // inclusively print 1 thru 10. every print statement needs a terminator. default terminator is \n (new line) unless you vhange it
    if num > 9 {
        print(num, terminator:" ")
    } else {
        print(num, terminator:",")
    }
}
/*
 LOOPS WITH ARRAYS
 */

let pursuitStacks = ["iOS", "web", "Android"]
for pursuitClass in pursuitStacks {
    print("Pursit class is \(pursuitClass)")
}
/*
 LOOPS WITH ARRAY / IF ELSE
 */
let fellows = ["Tiffany","Yulia","Josh","Maitree"]
for fellow in fellows {
    if fellow == "Tiffany" {
        print("Thats my girl")
    }else {
        print("Their so cool")
    }
}
/*
 LOOPS WITH ARRAYS & SWITCH STATEMENTS
 */
let temperatures = [69, 75, 87, 64, 61, 68, 100]
for temp in temperatures {
    switch temp {
    case 8:
        print("Catch me at the beach")
    default:
        print("Just another day")
    }
}
let message = "message"
for num in 0..<5 {
    print(num,"\(message)")
}
/*
 CONTROL TRANSFER STATEMENT
 where, break, continue
 */
// use where to print a number only ending in 5 inclusively

for number in 1...100 where number % 10 == 0 {
    print("\(number)'s last digit is 0")
}
// break- exit loop or end loop, stop looping

for num in 1...10 {
    if num == 7 {
        print("Hbd Miles")
        break
    } else {
        print("not yet buddy")
    }
}
//continue

for num in 1...10{
    if num % 2 == 0 {
        continue
    }
    print(num)
}

/*
 WHILE LOOP
 */
var seconds = 10
while seconds >= 0 {
    if seconds == 0 {
        print("BlastOFF!!")
    }else{
        print("countdown \(seconds)...")
    }
    seconds -= 1
    //while condition NEEDS a way to stop loop or it will run infinetely until your playground explodes!!
}


//for num in 20...150 {
//    if num != 31 {
//        print(num)
//        continue
//
//    } else if num != 35 {
//        print(num)
//        continue
//    }else {
//        print(num, terminator: " ")
//    }
//}

for num in 20...150 {
    if num == 31 {
        print(num)
    } else if num == 35 {
        print(num)
    }else if num >= 40 && num <= 59 {
        print(num, terminator: ",")
    } else if num == 60 {
        print(num, terminator:" ")
    }
}
/*
                            LOOPS CONTINUED!
 */
//REPEAT - WHILE LOOP is the same as DO - WHILE. where repeat-while is specific to swift
var str = "Hello Playground"

for _ in 1...5 {    // for -in review
    print( str )
}
// this print Hello Playground 5 times

var isPlaying = false
var currentLevel = 1
let finalLevel = 10


repeat {
    if isPlaying {
        print("playing level \(currentLevel)")
    if currentLevel == finalLevel {
        print("I will definitely reccomend this game.")
        isPlaying = false
    }
    currentLevel+=1
} else {
       print("Trying out Pursuit arcade")
    isPlaying = true
}
} while isPlaying == true

/*
                                NESTED LOOPS
 */
// multiplication table from 1 to

for i in 1...5 {    // outter for loop.. the first time it enters the loop it 1.
    for j in 1...5 {    // inner for loop
        print ("\(i) * \(j) is \(i*j)") // once the inner loop is exevuted it resets
    }
}
