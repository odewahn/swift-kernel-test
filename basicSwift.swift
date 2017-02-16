//: Playground - noun: a place where people can play

import Foundation

// variables, constants and printing
var myVar = "Hello, notebook"
print(myVar)

myVar = "Hi notebook"
print(myVar)

var myExplicitVar : Int = 4
myExplicitVar += 3
print(myExplicitVar)

// trying to change this will cause a compiler error
let myConst = 3

print("An example of string interpolation using the earlier values: \(myExplicitVar + myConst)")

// arrays
var tastyMeats = ["beef","chicken","lamb","lobster"]
print("The first tasty meat is \(tastyMeats[0])")
tastyMeats.append("pork")
tastyMeats.append("goat")

// printing all the elements of the array
for meat in tastyMeats
{
    print("\(meat) is tasty")
}

// dictionaries
let hotspurCrew = [
    "Captain" : "Horatio",
    "First Lieutenant" : "Bush",
    "Steward" : "Hobbs",
    "Bosun" : "Matthews",
    "Coxswain" : "Wolfe"
]

for (position, crew) in hotspurCrew
{
    print("The \(position) is \(crew)")
}

// tuples
let error = (404, "file not found")
print("Error \(error.0), \(error.1)")

// tuples can have named values
let (errorCode, errorMessage) = error
print("Error \(errorCode), \(errorMessage)")

let namedError = (errorCode: 418, errorMessage: "I am a teapot")
print("Error \(namedError.errorCode), \(namedError.errorMessage)")

// enum
enum Compass
{
    case north
    case south
    case east
    case west
}

let direction : Compass = .north

// basic flow control
switch direction
{
case .north:
    print("watch out for polar bears")
case .south:
    print("beware, here be penguins")
case .east:
    print("the sun rises here, I thought it'd be brighter")
case .west:
    print("when it goes wild it has a lot of horses and guns and cowboys or so the movies would have me believe")
}

for meat in tastyMeats
{
    if meat == "lamb" || meat == "goat"
    {
        print("it goes baa")
    }
    else if meat == "beef"
    {
        print("it goes moo")
    }
    else
    {
        print("It makes another noise...")
    }
}

// Optionals
// optional values may not exist
// only optional can be nill
var optionalInt : Int? = 4
// can then check if they exist
print(optionalInt == nil)
// can be forced unwrapped but this is dangerous
// program will crash if optionalInt is nil
let thing = 4 + optionalInt!
print(thing)
optionalInt = nil
// can use if let syntax to safely get a constant copy of an optional
if let unwrappedOptional = optionalInt
{
    print("the optional containts: \(unwrappedOptional)")
}
else
{
    print("there is no value")
}

// lots of methods return optionals
if let lobsterIndex = tastyMeats.index(of: "lobster")
{
    // but many require a non-optional value to work
    tastyMeats.remove(at: lobsterIndex)
}
print(tastyMeats)


// Functions
func greet(person:String, day: String)->String
{
    return "Hi \(person), good to see you this \(day)"
}
print(greet(person: "Bob", day: "Wednesday"))

// this isn't very swifty, we should use labels and hidden parameters to make it more like a sentence
func greet(_ person:String, on day:String) -> String
{
    return "Hi \(person), good to see you this \(day)"
}
print(greet("Richard", on: "Tuesday"))

// finally we should really use an enum with a base string type to make this even swiftier
enum Day : String
{
    case sunday
    case monday
    case wednesday
    case thursday
    case friday
    case saturday
}
func greet(_ person: String, on day:Day) -> String
{
    return "Hi \(person), good to see you this \(day.rawValue)"
}
print(greet("Sarah", on: .thursday))

// Extensions and Custom objects
infix operator **
extension Double
{
    static func ** (left: Double, right:Double) -> Double
    {
        return pow(left,right)
    }
}
print(4 ** 3)

struct Rectangle
{
    var length: Double
    var width: Double
    
    func area()->Double
    {
        return length * width
    }
}
let rectangle = Rectangle(length: 3, width: 4)
print(rectangle.area())

