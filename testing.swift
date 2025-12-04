//
//  testing.swift
//  
//
//  Created by Nikhil Nambiar Chengat on 2025-12-04.
//

print("Hello World") // print statement

var age = 23 // for variables, declaring like this will allow compiler to infer data type
let name = "Nikhil" // for constants, cant be changed, similar to adding final to variables in java

// Common data types: String, Bool, Int, Double
var lastName: String = "Chengat" // to specify the datatype for variable
var isStudent: Bool = false
var height: Int = 188
var weight: Double = 205.6

// printing variables: \(varName) aka string interpolation
print("Hello \(name) \(lastName)! You are \(age) and your height is \(height) cm and your weight is \(weight) lbs." )

let a = 1; let b = 2 // ; only for having multiple expressions in one line
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
