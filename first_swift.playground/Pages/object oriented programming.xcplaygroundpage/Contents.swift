
import Foundation

/*
 // Object Oriented Programming
 
 //create = initialize(init) = Allocate (add to memory)
 //Destroy = Deinitialize(deinit) = Deallocate (remove) from the memory
 
 
 //Automatic Reference Counting(ARC)
    //A live count of the number of objects in memory
    //create 1 object, count goes up by 1
    //create 2 object, count goes up by 2
    //Destroy 1 object, count goes down by 1
    
    //The more objects in memory, the slower the app performs
 // we want to keep the ARC count as low as possible
 // we want to create objects only when we need them
 // And destroy them as soon as we no longer need them
 
 // for example, if an app has 2screens and user is moving from screen 1 to screen 2. we only want to allocate screen 2 When we need it(ie. when the user clicks a button to segue to screen 2). When we get to screen 2,then we may want to deallocate screen 1.
 
 //There are 2 types of memory
 Stack and Heap
 //only objects in the Heap are counted towards ARC
 
 
 //Objects in the stack
 --Strings, Bool, Int most basic types
 --Struct, Enums
 
 //Objects in Heap
 --Functions
 --Class, Actors
 
 
 //iphone is a multi-threaded environment
 // There are multiple threads of engines running simultaneously
 //Each threads has a stack
 //But there is only 1 Heap for all threads
 
Therefore:
 //Stack is faster, lower memory footprint, preferable
 //Heap is slower, higher memory footprint, risk of threading issues
 
 
 
 ////Value vs Reference type
 //Objects in the stack are value types.
 //When you edit a value type, you create a copy of it with new data
 
 //Objects in the Heap are reference types.
 //When you edit a Reference type, you edit the object that you are referencing. This reference is called a pointer becuase it points to an object in the Heap (in memory).
 
 
 */

struct MyFirstObjects{
    let title: String = "Hello world"
}

class MySecondObjects{
    let title: String = "Hello world"
}
