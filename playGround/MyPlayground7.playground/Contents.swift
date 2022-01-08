import UIKit

//let evenNumbers: [Int] = [2, 4, 6, 8]
var evenNumbers: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

evenNumbers.append(contentsOf: [18, 20])

//evenNumbers = []
//let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first)

//evenNumbers = []
//first item이 항상 있다고 장담할 수 없기 떄문에 optional type
let firstItem = evenNumbers.first

let lastItem = evenNumbers.last

if let firstElement = evenNumbers.first {
    print("--> first item is: \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

var firstItem1 = evenNumbers[0]
var secondItem2 = evenNumbers[1]
var tenthItem10 = evenNumbers[9]

// --------->


let firstThree =  evenNumbers[0...3]

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)

//evenNumbers.removeAll()
//evenNumbers = []
evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

evenNumbers.swapAt(0, 1)

for num in evenNumbers {
    print(num)
}
