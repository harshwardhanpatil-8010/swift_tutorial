import Foundation

//There is always a value and it is a boolean
let myBool: Bool? = false

//We don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = nil
//print(myOtherBool ?? <#default value#>)
//
//myOtherBool = true
//print(myOtherBool)
//
//myOtherBool = false
//print(myOtherBool)
//
//myOtherBool = nil
//print(myOtherBool)

//  nil coalescing operator ??

let newValue: Bool? = myOtherBool


// The value of myOtherBool (if there is one), otherwise false
let newValue2: Bool = myOtherBool ?? false

print("New Value2: \(newValue2.description)")

var myString: String? = "Hello World"
print(myString ?? "there is no value")

myString = "new text"
print(myString ?? "there is no value")

myString = nil
print(myString ?? "there is no value")

//let newString = myString ?? "Default String"

//------------------------------------------------

var userIsPremium: Bool? = nil

@MainActor func checkUserIsPremium() -> Bool? {
   return userIsPremium
}

@MainActor func checkIfUserIsPremium2() -> Bool {
    return userIsPremium!
}

let isPremium = checkUserIsPremium()


//If-let
@MainActor func checkIfUserIsPremium3() -> Bool {
    //If there is a value, let newValue equal that value
    if let newValue = userIsPremium{
        //Here we have access to the non-optional value
        return newValue
        
    }else{
        return false
    }
}

@MainActor func checkIfUserIsPremium4() -> Bool {

    if let newValue = userIsPremium{
        return newValue
    }
    return false
}

@MainActor func checkIfUserIsPremium5() -> Bool {

    if let userIsPremium{
        return userIsPremium
    }
    return false
}

//using Guard-let

@MainActor func checkIfUserIsPremium6() -> Bool {
    //Make sure there is a value
    //If there is, let newValue equal that value
    // Else (otherwise) return out of the function
        guard let newValue = userIsPremium else {
        return false
    }
    //Here we have access to the non-optional value
    return newValue
}


@MainActor func checkIfUserIsPremium7() -> Bool {
    
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

//--------------------------------------------------------
var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavouriteMovie: String? = nil

@MainActor func checkIfUserIsSetUp() -> Bool {
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie {
        //userIsNew == Bool AND
        //userDidCompleteOnBoarding = Bool AND
        //userFavouriteMovie == String
        return getUserStatus(userIsNew: isNew, userDidCompleteOnBoarding: didCompleteOnboarding, userFavouriteMovie: favouriteMovie)
    } else {
        //userIsNew == nil OR
        //userDidCompleteOnBoarding== nil OR
        //userFavouriteMovie == nil
        return false
    }
}


@MainActor func checkIfUserIsSetUp2() -> Bool {
    guard let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie else{
        //userIsNew == Bool AND
        //userDidCompleteOnBoarding = Bool AND
        //userFavouriteMovie == String
      return false
    }
        //userIsNew == nil OR
        //userDidCompleteOnBoarding== nil OR
        //userFavouriteMovie == nil
    return getUserStatus(userIsNew: isNew, userDidCompleteOnBoarding: didCompleteOnboarding, userFavouriteMovie: favouriteMovie)
    
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnBoarding: Bool, userFavouriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnBoarding {
        return true
    }
    return false
    }
    

//Nested if-let or layered if-let
@MainActor func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew{
        //userIsNew == Bool
        
        if let userDidCompleteOnboarding{
            //userDidCompleteOnboarding == Bool
            
            if let userFavouriteMovie{
                //userFavouriteMovie == String
                return getUserStatus(userIsNew: userIsNew, userDidCompleteOnBoarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
            } else{
                //userFavouriteMovie == nil
                return false
            }
        } else{
            //userDidCompleteOnboarding == nil
            return false
        }
    }else {
        //userIsNew == nil
        return false
    }
}



//Nested guard-let or layered guard-let
@MainActor func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew else{
        //userIsNew == nil
        return false
    }
    guard let userDidCompleteOnboarding else{
        //userDidCompleteOnboarding == nil
        return false
    }
            guard let userFavouriteMovie else{
                //userFavouriteMovie == nil
                return false
            }
    
            return getUserStatus(userIsNew: userIsNew, userDidCompleteOnBoarding: userDidCompleteOnboarding, userFavouriteMovie: userFavouriteMovie)
}

//------------------------------------------------------------------

//optional chaining

func getUserName() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username: String? = getUserName()
    
    //I will get the count if the username is not nil
    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    //I will get the count always
    let count2 = title.count
    
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
}



// safely unwrap optionals
/*  nil coleasing
    if-let
    guard
*/


//explicitly unwrap optionals
//If I will get the count because i know 100% that username is not nil
//This will crash the application if username is nil
//let count3: Int = username!.count
