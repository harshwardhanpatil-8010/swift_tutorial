import Foundation

struct databaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}
    
var allUsers: [databaseUser] = [
    databaseUser(name: "Nick", isPremium: true, order: 4),
    databaseUser(name: "John", isPremium: false, order: 2),
    databaseUser(name: "Mary", isPremium: true, order: 1),
    databaseUser(name: "joe", isPremium: true, order: 1000)
]
// Filter
//var allPremiumUsers: [databaseUser] = allUsers.filter{ user in
//    if user.isPremium{
//        return true
//    }
//    return false
//}


//-----------------------
var allPremiumUsers: [databaseUser] = allUsers.filter{ user in
    user.isPremium
}

///////////////// or
var allPremiumUsers2: [databaseUser] = allUsers.filter({$0.isPremium})
//-------------------------------

//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

print(allPremiumUsers)

// Sorted
//--------------------------------------------------
var orderedUsers: [databaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order}

// or

var orderedUsers2: [databaseUser] = allUsers.sorted(by: {$0.order < $1.order})
//-------------------------------------------------
print(orderedUsers)


//Map
//--------------------------------------------
var userName: [String] = allUsers.map {user in
    return user.name
}

//or

var username: [String] = allUsers.map({ $0.name })
//---------------------------------------------------------
print(userName)
