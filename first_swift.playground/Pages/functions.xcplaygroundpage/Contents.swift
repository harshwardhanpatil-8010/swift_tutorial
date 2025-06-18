
import Foundation

func myFirstFunction(){
    print("MY FIRST FUNCTION")
    mySecondFunction()

}
func mySecondFunction(){
    print("MY Second FUNCTION")
    myThirdFunction()
    
}

func myThirdFunction(){
    print("MY THIRD FUNCTION CALL")
}
myFirstFunction()

func getUserName() -> String{
    let username: String = "HARSH"
    return username
}

let name: String = getUserName()

//----------------------------------------------------------
showFirstScreen()
@MainActor func showFirstScreen() {
    var userDidCompleteOnBoarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnBoarding: userDidCompleteOnBoarding, profileIsCreated: userProfileIsCreated)
    
    if status == true{
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }}

@MainActor func checkUserStatus(didCompleteOnBoarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnBoarding && profileIsCreated {
        return true
    } else{
        return false
    }
    }


//----------------------------------------------------------------
let newValue = doSomething()

func doSomething() -> String{
    var title: String = "Avengers"
    
    // If title == Avengers
    if title == "Avengers" {
       return "MARVEL"
    }else{
        return "Not marvel"
    }
}

doSomethingElse()

func doSomethingElse(){
    var title: String = "Avengers"
    
    // make sure title == Avengers
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    print("Marvel")
}


func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    guard title == "Avengers" else {
        return false
    }
    return true
    
}


func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    if title == "Avengers"  {
        return true
    } else{
        return false
    }
    
}




//-------------------------------------------
// Calculated variables

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int)-> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int{
    return number1 + number2
}
