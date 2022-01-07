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


var value = 5
func increamentAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

increamentAndPrint(&value)


