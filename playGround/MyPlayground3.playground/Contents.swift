import UIKit

func printName() {
    print("---> My name is Jason")
}

printName()


func printMultipleofTen(value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleofTen(value: 20)


func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

//printTotalPrice(price: 1500, count: 5)


func printTotalPrice(가격 price: Int, 갯수 count: Int){
    print("Total Price: \(price * count)")
}


printTotalPrice(가격:1500, 갯수:5)
printTotalPrice(가격:1500, 갯수:10)
printTotalPrice(가격:1500, 갯수:7)
printTotalPrice(가격:1500, 갯수:1)


func printTotalPriceDefault(가격 price: Int = 1500, 갯수 count: Int){
    print("Total Price: \(price * count)")
}

printTotalPriceDefault(갯수: 5)
printTotalPriceDefault(갯수: 10)
printTotalPriceDefault(갯수: 7)
printTotalPriceDefault(갯수: 1)

printTotalPriceDefault(가격: 2000, 갯수: 5)


func totalPrice(price: Int, count: Int) -> Int{
    let totalPrice = price * count
    return totalPrice
}



let calculatedPrice = totalPrice(price: 1000, count: 77)
calculatedPrice
print(calculatedPrice)
