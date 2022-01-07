import UIKit

func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double){
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격 : Int, 갯수 : Int){
    print("Total Price: \(가격 * 갯수)")
}

//In - out paramter

var value = 5
func increamentAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

increamentAndPrint(&value)


// Function as a param

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int{
    return a - b
}

var function = add
function(4, 2)

var function2 = subtract
function(4, 1)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
    
}

printResult(add, 10, 5)

printResult(subtract, 10, 5)
