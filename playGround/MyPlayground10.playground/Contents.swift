import UIKit

// closure = 이름 없는 메소드라고 볼 수 있음

var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b}

let result = multiplyClosure(4, 2)



func operateTwoNum (a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
    
}

let voidClosure: () -> Void = {
    print("iOS 개발자, 클로저 ")
}

voidClosure()



// Capturig Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count
