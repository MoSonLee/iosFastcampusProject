import UIKit

var str = "Hello. playground"


let value = arc4random_uniform(100)
print("--> \(value)")


// tuple
let coordinates = (4,6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = ( x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y


let (x3, y3) = coordinatesNamed

x3
y3


// Boolean

let yes = true
let no = false


let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive {
    print("---> 참")
} else  {
    print("---> 거짓")
}


let a = 5
let b = 20

if a > b {
    print("---> a가 크다")
} else {
    print("---> b가 크다")
}


let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2

if isTwoNameSame {
    print("---> 이름이 같다")
} else {
    print("---> 이름이 다르다")
}


let isJason = name2 == "Jasong"
let isMale = false


let JasonAndMale = isJason && isMale
let JasonOrMale = isJason || isMale


//let greetingMEssage: String
//if isJason {
//    greetingMEssage = "Hello Jason"
//} else {
//    greetingMEssage = "Hello Somebody"
//}
//
//print("Message: \(greetingMEssage)")


let greetingMEssage: String = isJason ? "Hello Jason" : "Hello Somebody"
print("Message: \(greetingMEssage)")


// ----- Scope


func hello(){
    var hours = 50
    let payPerHour = 10000
    var salary = 0
    
    if hours > 40 {
        let extraHours = hours - 40
        salary += extraHours * payPerHour * 2
        hours -= extraHours
    }
    
    salary += hours * payPerHour
    
    print(hours)
    //    print(extraHours)
}

hello()


