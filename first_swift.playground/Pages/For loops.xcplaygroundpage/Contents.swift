
import Foundation
//syntax
for x in 0..<50 {
    print(x)
}



let myArray = ["Alpha", "Beta", "Gamma", "delta", "Epsilon"]

var secondArray: [String] = []
for item in myArray {
    print(item)
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)


struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLesson = [
    LessonModel(title: "Lesson1", isFavorite: true),
    LessonModel(title: "Lesson2", isFavorite: false),
    LessonModel(title: "Lesson3", isFavorite: true)
]

var favouriteLessons: [LessonModel] = []

for lesson in allLesson {
    if lesson.isFavorite{
        favouriteLessons.append(lesson)
    }
}

print(favouriteLessons)

for (index, lesson) in allLesson.enumerated(){
    if index == 1 {
    //    break
        continue
    }
    print ("index: \(index) || lesson: \(lesson)")
}
