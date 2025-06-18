
import Foundation

//constant
let someConstant: Bool = true

//variable
var someVariable: Bool = true

//Cannot assign to value: 'someConstant' is a 'let' constant
//someConstant = false

//can assign a value in var because variables can change values
someVariable = false

var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 3
print(myNumber)

//if statements
var userIsPremium: Bool = false

if userIsPremium == true{
    print("1 - user is premium")
} else{
    print("1.1 - user is not premium")
}
//if userIsPremium
//    print("2 - user is premium")
//}
//
//if userIsPremium == false {
//    print("3 - user is not premium")
//}
//
//if !userIsPremium {
//    print(4 - "user is not premium")
//}
