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
var arrayOfInt = [Int]()
var countingUp = [ "one", "two"]
arrayOfInt.append(5)
countingUp.count
countingUp.append("three")
print("There are \( arrayOfInt.count) elements in the array")

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



var temp = 0

if Bool(temp) {
    let strin = "True"
} else {
    let this = "False"
}

switch temp {
case 3 : let msg = "Three"
case 4 : let msg = "Four"
case 0 : let msg = "Zero"
default: let msg = "Default"
}

let dict = [
    "One" : [1,2,3,4,5,6,7] ,
    "Two" : [8,9,10,11,12,13] ,
    "Three" : [14,15,16,17,18]
]


var keyVals = [String]()
var vals = [(key:String,value:Int)]()
for (keys , things) in dict {
    keyVals.append(keys)
    for stuff in things{
        let this = (keys,stuff)
        vals.append(this)
    }
}

let value1 = vals[12].value

func one(var value: Int) -> Int {
    var result = 0
    func inone(var valuetwo: Int) -> Int {
        valuetwo += 15
        return valuetwo
    }
    
    result = inone(value)
    
    return result
}

let kantonese = one(40) {
    (vars : Int)->Int in
    let integerval = 60
    return integerval
}
