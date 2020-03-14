//: # Swift Fundamentals I
//: ## Hello, World!
//: As tradition dictates, any exploration of a new language needs to start with "hello, world"

let helloWorld = "Hello World!"
print(helloWorld)

//: ## Comments
//: A comment is text that is ignored by the compiler. So it can be plain text, or even code. If it formatted like the examples below, it will be completely ignored when the project is built. Comments are notes to yourself or others about how a given block of code functions.

// A single line comment is one with two slashes as the first characters
/*
 * A multi-line comment
 * is one that is bounded by
 * /* and */ characters
 */

//: ## Identifiers - Constant and Variable Names (Containers that hold values)
//: first character A-Z or a-z or _, followed by any of these plus 0-9
//: Camel Case - first letter of every word (after the first word) starts with a capital letter
let thisIsCamelCase = "Good"

//: Snake Case - Don't use
let this_is_snake_case = "Snake Case"

let lambdaSchool = "awesome"
let ls100 = "100%"
let _travelBack = "1985"
print("Lambda School is \(ls100) \(lambdaSchool)")

//: ## Mutability
//: There are two kinds of containers that hold values in Swift. One kind is called a constant, because once a value has been set, it cannot change for the lifetime of that container. Constants are declared with the `let` keyword.

let students = 30
let staff = 4
let totalPeople = students + staff
print(totalPeople)

//totalPeople = 39

//: Variables are declared with the 'var' keyword

var appleCount = 10
appleCount = appleCount + 5
print(appleCount)

// Compound Assignment

appleCount -= 2
print(appleCount)

appleCount *= 2
print(appleCount)

//: ## Type Inference and Explicit Typing
//: All containers in Swift must have a type set on them. The containers we've seen so far had their types set implicitly. This is called _type inference_. Meaning the kind of object stored in the container was determined by looking at what kind of value was assigned to the container.

let ios = "Apple's mobile operating system"

//: In the line above, the constant `ios` stores a value "Apple's mobile operating system". This value is a `String`, so the data type of `ios` is `String`. The type was _inferred_ by the value provided.
//: Another way to type a container is to set it explicitly. See some examples of this below.

let price: Double = 1299.99
let onSale: Bool = false
let modelName: String = "MacBook Pro"
let discountQty: Int = 15

if onSale {
    print("\(modelName) on sale for \(price)!")
} else {
    print("\(modelName) at regular price: \(price). Buy at least \(discountQty) for special pricing.")
}

//: ## Type Safety
//: Once a container's data type is set, it cannot hold a value of any other type

var life = 42

// life = "The ultimate answer to life, the universe and everything"

//: ## Type Coercion
//: Types are never automatically converted into another type.

let label = "The width is "
let width = 94

let widthLabel = label + String(width)
print(widthLabel)

//: ## String Interpolation and Concatenation
//: Using the `+` operator with two strings is called _string concatentation_. One string is appended to the end of another.

let heightLabel = "The height is" + " " + "100"
print(heightLabel)

//: The below example shows the _string interpolation_ characters (`\()`). These allow a `String` (or non-string) value to be placed in-line inside a larger `String` literal value. If the value is not already a `String`, it will be converted.

let anotherWidthLabel = "The width is \(width)"
print(anotherWidthLabel)

//: ## Collections
//: ### Arrays
//: A Swift array is a collection of like objects, and they are stored in the order they are added. Accessing a particular element is done by using its index value (which starts at 0).

let shipCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]
let sameCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]
let differentCaptains = ["Kathryn Janeway", "Poe Dameron"]

// Arrays are Zero-Indexed = start counting from Zero
//Subscript Syntax arrayName[0]

print(shipCaptains[0])

//: Array equality is determined by looking at each element. If all elements are the same, and in the same order, the two arrays are equal.

if shipCaptains == sameCaptains {
    print("Arrays are equal")
} else {
    print("Arrays are not equal")
}

//: Since `shipCaptains` was declared as a constant, we must convert it to a mutable array before we can add entries.

var moreCaptains = shipCaptains

//There are 2 ways to insert elements into an array

moreCaptains.append("Kathryn Janeway")
print(moreCaptains)

// moreCaptains[1] = "Poe Dameron" // Modifying a value in an array
moreCaptains.insert("Poe Dameron", at: 1) // Adding a value at a given index
print(moreCaptains)

moreCaptains.remove(at: 2)

print(moreCaptains)

// Ordered collection of like elements

//: ### Dictionaries
//: A Swift dictionary is similar to an array in that is a collection, but the items are stored in no particular order. To access an item, its associated key is provided. Dictionaries are also called "key-value" stores. The key has a type, and the value can have the same or a different type.

var occupations = ["Tim" : "Firefighter", "John" : "iOS Engineer", "Murphy" : "Web Developer", "Josh" : "Web Developer"]

occupations["Josh"]

//: ## Looping
//: ### `for`
//: `for` loops allow for iterating over a collection of elements (usually an array), examining each element in turn.

let scores = [75, 43, 103, 87, 12]
var passingStudents = 0
for score in scores {
    if score > 70 {
        passingStudents += 1
    }
}

print("\(passingStudents) students scored a passing grade of 70 or higher.")

//: ### `switch`
//: `switch` statements are useful when a multiple-choice path is possible for your code, and you want to choose a single path at runtime, based on some criteria.

let number = 6

switch number {
case 1:
    print("Got 1")
case 2:
    print("Got 2")
case 3, 4, 5:
    print("Got 3 or 4 or 5")
case 6...22:
    print("Got 6 to 22")
default:
    print("Got default")
}

let character = "z"

switch character {
case "a", "e", "i", "o", "u":
    print("The character is a vowel")
default:
    print("The character is a consonant")
}

let furniture = "Chair"

switch furniture {
case "Table":
    print("Got Table")
case "Chair", "Stool", "Bench":
    print("Got something to sit on")
default:
    print("Default")
    
}

//: ## Functions
//: A function in Swift is nothing more than a collection of instructions that accomplish some task. The advantage to grouping the instructions into a function is that the function can then be called whenever that task should be performed, rather than having to list out those instrutions a second, third, or nth time.

func averageScore(_ scores: [Int]) {
    // total divided by the number of scores
    var totalScore = 0
    for score in scores {
        totalScore += score
    }
    
    print(totalScore / scores.count)
}

averageScore(scores)

let otherScores = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

averageScore(otherScores)

//: ## Tuples
//: Tuples are a lightweight way of grouping related values into a single compound value.

let carrots = (name: "Carrots", aisle: 4, category: "produce", count: 25)

print(carrots.aisle)

print(carrots.category)
