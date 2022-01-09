import UIKit


var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1] // 중복된 것을 제외하고 유니크한 녀석들만 저장, 순서도 없음


someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet

someSet.remove(1)
someSet
