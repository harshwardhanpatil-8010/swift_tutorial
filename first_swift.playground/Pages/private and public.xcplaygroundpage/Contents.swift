//Access control
import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavourite: Bool
    
//    either of the below two functions
    
//    func updateFavouriteStatus(newValue: Bool) -> MovieModel {
//         MovieModel(title: title, genre: genre, isFavourite: newValue)
//    }
//    
    mutating func updateFavouriteStatus2(newValue: Bool){
        isFavourite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    //public
  public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavourite: false)
    
    //private
   private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavourite: false)
    
    //read is public, set is private
   private(set) var movie3 = MovieModel(title: "The Avengers", genre: .action, isFavourite: false)
    
    //used for private(Set)
    func updateMovie3(isFavourite: Bool){
        movie3.updateFavouriteStatus2(newValue: isFavourite)
    }
}

let manager = MovieManager()

//Either of the below two

//manager.movie1 = manager.movie1.updateFavouriteStatus(newValue: true)

//manager.movie1.updateFavouriteStatus2(newValue: true)

//print(manager.movie1)




//public
// We can GET and SET the value from outside the object.
//"too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavouriteStatus2(newValue: true)


//private
//we can't GET or set the value from outside the object
//"cannot access"
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateFavouriteStatus2(newValue: true)


//private(set)
//we can GET the value from outside the object, but we can't SET the value from outside the object
//"best practice"

let movie3 = manager.movie3
manager.updateMovie3(isFavourite: true)


//Note: public and private are by far the most common but there are many others
//open
//public
//internal
//fileparivate
//private
//
