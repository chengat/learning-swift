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

// string methods
print(name.isEmpty) // checks if its an empty string, this returns false
var cow = ""
print(cow.isEmpty) // returns true

print(name.uppercased()) // convert string to uppercase
print(name.lowercased()) // convert string to lowercase

//substring
var start = name.startIndex // first index - starts at 0
var end = name.index(start, offsetBy: 3) // third index
var sub = name[start..<end]
print(sub)

//to convert number to text - String(var)
print(String(a))

//converting string to number will return optionals

//special characters
print("Hello\nSwift") // newline
print("A\tB\tC") // tab
print("\"quoted\"") //quotes " "
print("\\") //backslash \

// """ for multiline strings
let poem = """
Roses are red,
Violets are blue.
"""
print(poem)

// arrays
var list1 = [1, 2, 3, 4]
print(list1[0]) //prints the first element of the array
list1.append(5) // adds to the end of the array
print(list1) // prints the entire list
print(list1.count) // prints the length of the list
print(list1.isEmpty) // would return true if list is empty
list1.insert(6, at: 2) // to insert element at a specific position, this case at index 2
print(list1)
list1.remove(at: 1)  // to remove element at a specific position, this at index 1
print(list1)

//looping through arrays
let fruits = ["Apple", "Banana", "Orange", "Grapes"]
// using for-in
for fruit in fruits {
    print(fruit)
}
// using enumerated()
for (i, fruit) in fruits.enumerated() {
    print("\(i+1): \(fruit)")
}
// using forEach
fruits.forEach { print($0)}
fruits.enumerated().forEach {print("\($0.offset + 1): \($0.element)")}

//Array Slicing
let middle = list1[1...3] // lowerbound and upperbound inclusive, the type is ArraySlice
print(middle)
let copy = Array(middle) // converts the type from ArraySlice to Array
print(copy)
let middle2 = list1[1..<3] // lowerbound inclusive, upperbound exclusive
print(middle2)
print(list1[...2]) // first three elements (upperbound inclusive)
print(list1[2...]) // from index 2 to the end (lowerbound inclusive)

//indices
// to iterate through the list using indices
let items = [10, 20, 30]
for index in items.indices {
    print("index: \(index), value: \(items[index])")
}
let lastIndex = items.index(before: items.endIndex) // to see the last valid index of a list
print(lastIndex)

// 2D Arrays
var grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print(grid)
print(grid[0][2]) // to access a particular element in the 2D array: grid[row][col]
for row in grid { //to print out each row of the 2D Array
    print(row)
}
grid[1][1] = 2 // to change a particular element
print(grid[1])

// Array Methods

let scores = [80, 75, 90, 60, 70]
let passed = scores.filter{ $0 >= 75 } // .filter {condition} used to filter out an array based on a condition
print(passed) // prints [80, 75, 90]
let curved = passed.map { $0 + 5 } // .map {expression} used to carry out artithmetic to all elements
print(curved) // prints [85, 80, 95]
let sumofScores = curved.reduce(0, +) // for taking a list and combining it into one value. Here, the starting value is set to 0 and + is to indicate the expression to use, so this will add all elements of cuved
print(scores.contains(80)) // .contains to check if specifc data exists in the array. Would return true if it exists
