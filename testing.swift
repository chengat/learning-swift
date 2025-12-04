//
//  testing.swift
//  
//
//  Created by Nikhil Nambiar Chengat on 2025-12-04.
//

print("Hello World") // print statement

var age = 23 // for variables, declaring like this will allow compiler to infer data type
var name = "Nikhil" // for constants, cant be changed, similar to adding final to variables in java

// Common data types: String, Bool, Int, Double
var lastName: String = "Chengat" // to specify the datatype for variable
var isStudent: Bool = false
var height: Int = 188
var weight: Double = 205.6

// printing variables: \(varName) aka string interpolation
print("Hello \(name) \(lastName)! You are \(age) and your height is \(height) cm and your weight is \(weight) lbs." )

var a = 1; let b = 2 // ; only for having multiple expressions in one line
print("\(a) + \(b) = \(a+b)") // \() syntax can do in line math and print em

// to print without a newline, user terminator
print("a", terminator: " ")
print("b")

// to print numbers without string interpolation
print(a, b) // will print with equal spaces

// Math functions
let c = -1
print(abs(c)) // absolute number
print(max(a, b)) // max number of the two
print (min(a, b)) // min number of the two

// single line comment
/*  multi
    line
    comments    */
/// to generate documentations for functions

// ? optional operator - only for declaring nil
var nickname: String? = nil // for declaring an empty string, nickname here doesnt have a value
nickname = "NNC"
print (nickname ?? "no nickname") // print nickname if it has a value, print "no nickname" if nickname is still nil (empty)

// separator and terminator (contd.)
print (a, b, c, separator: " | ", terminator:"; \n") // separator to dicatate whats printed in between each var instead of " " by default.
// terminator can also be used to dicatate how a line ends, using terminator would remove printing a newline unless '\n' is added to it.

// to use keywords as variable names, use ` `
let `switch`: String = "yes"
print (`switch`)

//to view the datatype of a variable - type(of: varName)
print(type(of: a))

// arithmetic operators
print(a + b)
print(a - b)
print(a * b)
print(b / a) // int / int = int
print(b % a)

//to cast int to double: Double(varName)
print(Double(a))

// boolean operators
let x = true, y = false
print(x && y) // AND operator
print(x || y) // OR operator
print(!x) // NOT operator

// comparison operators >=, <=
print(a == b) // equal
print(a > b) // more than
print(a < b) // less than
print(a != b) //Not equal

// to store just one letter or number or symbol or unicode - Character
let char: Character = "N"
print("Your middle initial is: \(char)")

// length of a string - var.count
print(name.count)

// converting a char to str - String(charVarName)
print(String(char))


/* 3 types of casting
-   as: safe upcast, guranteed cast
-   as?: optional downcast, might fail
-   as!: forced downcast, risky and could crash */

// ternary operator: condition ? a : b - do a if condition true and b if it isnt
let score: Int = 85
let flag = (score > 90) ? "A" : "not A"
print(flag)

// compound operators: +=, -=, etc.
print(a)
a += 5 // same as a = a + 5
print(a)

// += can also be used to append strings
print(name)
name += " Nambiar"
print(name)

/*
 operator precedence
 
 * before +
 && before ||
 
 */
