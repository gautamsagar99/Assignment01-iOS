import Foundation

/* Mobile Computing - iOS Spring 2023 Assignment 01 */

/* When you open this file in Xcode, it is normal that you see errors in the source code. */

//**************** QUESTION 1 ****************

// 1.a) Declare a variable called name, age, & gpa of type String, Int, Double respectively, using type annotation.

var name: String
var age: Int
var gpa: Double

 
// 1.b) Declare a constant called maxHeight of type Double, with a value of 180.93, using type annotation.

let maxHeight:  Double = 180.93

 
// 1.c) Print "Your max height is xxx.xx cm.", replacing the xxx.xx with the value of maxHeight. Use String interpolation.

print("Your max height is \(maxHeight) cm.")

print("-------------------------------------")
 
// 1.d) Assign 8,400,428,917 to a variable largeInt and print it. Use the Swift's ability to write large numbers so that they are easy to be read. Refer to Tuples worksheet (problem 4).

let number: Int64 = 8_400_428_917

print(number)

print("-------------------------------------")
 
// 1.e) Write Swift code to print the below text in one single print statement.
            /*
                Hello, All
                Welcome to Mobile Computing - iOS Spring23..!
            */

print("""
      Hello, All
      Welcome to Mobile Computing - iOS Spring23..!
    """
)

print("-------------------------------------")
 
//**************** END OF QUESTION 1 ****************
 
//**************** QUESTION 2 ****************

// 2.a) Predict what will happen when you try and execute below three statements? Make sure to uncomment the third line.
 
var x = 53.5
var y = 40
//y = x

// 2.b) Fix the error in the question 2.a

y = Int(x)

//**************** END OF QUESTION 2 ****************
 
//**************** QUESTION 3 ****************

// 3 Consider a point (x1,y1), find whether the point is inside or outside the right-angled triangle.

/*
(highX,highY)
|*
| *
|  *
|   *
|    *
|-----*(lowX,lowY)
 */

// with lower right corner (lowX,lowY) and top (highX, highY).
// depending upon the cases print "inside" or "outside"
// use the same test cordinates to test your code
// use this equation of hypotenuse y = -(4/3)x + 4 to solve
// sample test cases(1,-3),(0,0),(5,9),(1,2)


var x1:Double = 1
var y1:Double = 2
var lowX = 3
var lowY = 0
var highX = 0
var highY = 4

//print("-----------------------------------")

var res:Double

res = -(4/3)*x1 + 4

//print(floor(res))
//print(y1)

if (res>=y1) {
    print("inside")
}else{
    print("outside")
}


 
//**************** END OF QUESTION 3 ****************
 
//**************** QUESTION 4 ****************

// Using loops
// 4.a) Calculate the minimim value of x for which 8ˣ>4000000000 and print with a message.

print("-------------------------------------")
var minVal:Int = 1
repeat {
    minVal += 1
}while pow(8,minVal) < 4_00_00_00_000

print("Min value of x is ",minVal)

// 4.b) Let's say there is an n x n grid. We want to connect the diagonals of the grid
// such that when we print the grid it prints a cross pattern like the format shown below.
// To get the required output, pick special symbols by going to Edit > Emoji & Symbols in Xcode.
// Search for snow to get the both emojis
// Note : Your code should work for any odd value of n, for example, 1, 9, and 147.
// Hint : Use terminator in print statements and loops.
// Sample output for n = 17

//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️


print("-------------------------------------")

var temp1:Int = 0
var temp2:Int = 0
var n:Int = 17

for temp1 in 0...n {
    for temp2 in 0...n {

            if (temp1 == 0 || temp2 == 0 || temp1 == temp2 || temp1 == n
                            || temp2 == n  || temp1 + temp2 == n )
            {
                print("❄️", terminator:"")
            }
            else{
                print("🎅",terminator: "");
            }
          
        }
        print("",terminator: "\n")
    
    
    }
print("-------------------------------------")

//**************** END OF QUESTION 4 ****************
 
//**************** QUESTION 5 ****************

// Using Strings
// 5.a) Replace the character "a" in original string with "@" and print the new string.

var original = "This string contains a very few a's."

//original.insert(contentsOf: "@", at: original.index(before: original.endIndex))
//let replaced = String(aString.map {
//    $0 == " " ? "+" : $0
//})


var newstring:String = original.replacingOccurrences(of: "a", with: "@")


print(newstring)

print("-------------------------------------")

// 5.b) Declare 2 strings str1 and str2 as "go, bearcats!" and "GO, BEARCATS!", respectively and compare them.
// If the 2 strings are equal, print str1 and str2 are equal, else str1 and str2 are not equal.

var str1:String = "go, bearcats!"
var str2:String = "GO, BEARCATS!"

if str1 == str2{
    print("str1 and str2 are equal")
}else{
    print("str1 and str2 are not equal")
}
print("-------------------------------------")



// 5.c) Given a pair of non empty strings. Count the number of matching characters in those strings (consider the single count for the character which have duplicates in the strings).
// Input : s1 = "philadelphia"
//         s2 = "phillies"
// Output : 5
// (i.e. matching characters :- p,h,i,l,e)
// Hint : You may use Set() to get the unique characters in a string.

var s1:String = "philadelphia"
var s2:String = "phillies"
var resString:String = ""

for i in Set(s2){
    for  j  in Set(s1){
        if i == j{
            resString += String(i)
            break
        }
    }
    
}
print(resString.count)

print("-------------------------------------")



// 5.d) Write Swift code to trim leading and trailing emoji 🔥 character in a given string.
var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"
// expected output is "Bearcats"

print(myString1.filter{$0 != "🔥"})
//var replacedString:String = myString1.replacingOccurrences(of: "🔥", with: "")
//print(replacedString)

//**************** END OF QUESTION 5 ****************
