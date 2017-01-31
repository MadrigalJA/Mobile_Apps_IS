//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//  Variables

var aInt = 5

var bInt:Int
bInt = 10

//  Constants

let str2 = String(aInt)
let str3 = "20"

//  Converting str2 to an integer?

let int2 = Int(str2)
let int3 = Float(str2)

//  Arrays
let arrayOfInt = [Int]()
var countingUp = [ "one", "two"]
countingUp.count
countingUp.append("three")
print("There are \(countingUp.count) elements in the array")

//optionals

var reading1:Float?
var reading2:Float?

reading1 = 1.1
reading2 = 2.2

//optional binding
if let r1 = reading1, r2 = reading2 {
    let avg = (r1+r2)/2
} else {
    let errorStr = "a reading is nil"
}