import Foundation

//Classes are slower than struct
//classes are stored in Heap
//Objects in the Heap are reference types
//Reference types point to an object in memory and update the object in memory


class ScreenViewModel{
    let title: String
    var showButton: Bool
    
    //same init as struct , except structs have implicit inits
    //also instead of giving an init we can give default values like
//    let title: String = ""
//    var showButton: Bool = false
    
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the object is being removed from memory
        //Structs do NOT have deinit
        
        print("ScreenViewModel deinitialized")
    }
    func hideButton(){
        showButton = false
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}

//Notice we are using a "let", because
//the object itself is not changing
//the data inside the object is changing

var viewModel: ScreenViewModel = ScreenViewModel(title: "screen1", showButton: true)
viewModel.showButton = false

