

import Foundation

//Dictionaries are slightly faster than Arrays

var myFirstDictionary: [String : Bool] = [
    "apple": true,
    "banana": false,
    "orange": true
]

// let item = myFirstDictionary["banana"]

var anotherDictionary: [Int: String] = [
    0: "Apple",
    176: "orange"
]

let item2 = anotherDictionary[176]

var Dictionay3: [String: String]=[
    "abc" : "Apple",
    "def" : "Orange"
]
let item3 = Dictionay3["abc"]

// adding a value to dictionary
Dictionay3["xyz"] = "Banana"
print(Dictionay3)

//removing from a dictionary
Dictionay3.removeValue(forKey: "def")
print(Dictionay3)


struct PostModel {
    let id: String
    let title: String
    let likecount: Int
}

//---------Using arrays
var PostArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post1", likecount: 5),
    PostModel(id: "def123", title: "Post2", likecount: 3),
    PostModel(id: "xyz345", title: "Post3", likecount: 8)
]

if PostArray.indices.contains(1){
    let item = PostArray[1]
    print(item)
}


//------------Using Dictionaries
var PostDict: [String: PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "post1", likecount: 5),
    "def123" : PostModel(id: "def123", title: "Post2", likecount: 3)
]

if PostDict.keys.contains("def123"){
    let item = PostDict["def123"]!
    print(item)
}
