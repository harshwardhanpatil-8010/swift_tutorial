import Foundation

// for maths prblems use double instead of int
var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 1000

//Addition
likeCount = likeCount + 1
likeCount += 1

//subtraction
likeCount = likeCount - 1
likeCount -= 1

//Multiplication
likeCount = likeCount * 1.5
likeCount *= 1.5

//division
likeCount = likeCount / 2
likeCount /= 2

//order of operation does matter
//PEDMAS rule
likeCount = likeCount - 1 * 1.5
var userIsPremium: Bool = true

if likeCount == 5{
    print("post has 5 likes")
} else {
    print("post does not have 5 likes")
}

if likeCount != 5{
    
    print( "post does not have 5 likes")
}

if likeCount >= 5{
    print("post has greater than or equal to 5 likes")
}

if likeCount <= 5{
    
    print("post has less than or equal to 5 likes")
}

if (likeCount > 3) && (commentCount > 0) {
    print ("post has greater than 3 likes and greater than 0 comments")
}
else{
    print("post has 3 likes or less than 0 comments")
}

if likeCount > 3 || commentCount > 0 {
    print("post has greater than 3 likes or greater than 0 comments")
}

if (likeCount > 3 && commentCount > 0) || viewCount > 50 {
    print("EXECUTE")
}

if likeCount > 5 {
    print("Like count is greater than 5")
}
else if likeCount > 2 {
    print("Like count is greater than 2")
} else if userIsPremium{
    print("user is premium")
} else{
    print("else statement")
}
