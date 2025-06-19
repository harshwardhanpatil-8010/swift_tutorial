import Foundation

//Structs are fast
//Structs are stored in the Stack(memory)
//Objects in the stack are value types
//Value types are copied and mutated

struct Quiz{
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    //structs have an implicit init
    
//    init (title: String, dateCreated: Date){
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    init (title: String, dateCreated: Date = .now, isPremium: Bool?){
        self.title = title
        self.dateCreated = dateCreated
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello World"
//let myQuiz: Quiz = Quiz(title: "My Quiz", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "My Quiz")
let myQuiz: Quiz = Quiz(title: "My Quiz", isPremium: true)

print (myQuiz.title)

//-----------------------------------------

//Immutable Struct = all "let" constants = Not mutable = cannot mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Harsh", isPremium: true)

@MainActor func markUserAsPremium(){
    print(user1)
    user1 = UserModel(name: "Harsh", isPremium: false)
    print(user1)
}
markUserAsPremium()

//------------------------------

//Mutable struct
struct UserModelMutable {
    let name: String
    var isPremium: Bool
}

var user2 = UserModelMutable(name: "Harsh", isPremium: true)

@MainActor func markUserAsPremium2(){
    print(user2)
    user2.isPremium=false
    print(user2)
}
markUserAsPremium2()

//--------------------------------------

struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3{
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Harsh", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)
print(user3)


//------------------------
    //mutable struct

struct UserModel4 {
    let name: String
    var isPremium: Bool
    
    //*"mutating func" is used for mutable struct when using function inside a struct
    mutating func markUserAsPremium(){
        isPremium = true
    }
    mutating func updateIsPremium(newValue: Bool){
        isPremium = newValue
    }}

var user4 = UserModel4(name: "Harsh", isPremium: false)
user4.markUserAsPremium()
print(user4)

user4.updateIsPremium(newValue: true)
print(user4)
