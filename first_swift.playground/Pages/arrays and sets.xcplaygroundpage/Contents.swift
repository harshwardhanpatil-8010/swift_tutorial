
import Foundation

//Arrays and Sets

//tuple
func doSomething(value: (title: String, title2: String)){
    
}
doSomething(value: (title: "hello", title2: "world"))

////=------------------------------
///

//----
var fruits: [String] = ["apple", "banana", "orange", "Mango"]
//-----
let fruits2: Array<String> = ["apple", "banana", "orange"]

//-----
let apple: String = "Apple"
let orange: String = "Orange"
let banana: String = "Banana"
let fruits3: [String] = [apple, banana, orange]

//---
let myBool: [Bool] = [true, false, true]

let count = fruits.count
let firstItem = fruits.first
let lastItem = fruits.last

if let firstItem = fruits.first {
    print(firstItem)
}

//different methods of adding elements
//fruits = fruits + ["Pineapple", "grapes"]

//fruits.append("pineapple")
//fruits.append("grapes")

fruits.append(contentsOf: ["pineapple", "Mango"])
print(fruits)


//accessing elements of the array
fruits[2]

let fruitsIndex = fruits.indices.first
let lastIndex = fruits.indices.last


fruits.insert("avocado", at: 2)
fruits.insert(contentsOf: ["Watermelon"," Tangerine"], at: 2)

print(fruits)

fruits.remove(at: 2)

print(fruits)

fruits.removeAll()

struct ProductModel {
    let title: String
    let price: Int
}
var myProducts: [ProductModel] = [
    ProductModel(title: "Book1 ", price: 10),
    ProductModel(title: "Book 2", price: 1000),
    ProductModel(title: "Book 3", price: 50),
    ProductModel(title: "Book 4", price: 100)
]


print(myProducts)


//---------------------
//Sets
//Sets do not have any order
//they don't print same string two times

var finalFruits: Set<String> = ["apple", "banana", "orange", "apple"]
print(finalFruits)
