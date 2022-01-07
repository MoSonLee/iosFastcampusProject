import UIKit

// ----- Optional


//있을지 없을지 모를떄
var carName: String?

carName = nil

carName = "Tesla"


var favoriteActress: String? = "박소담"


// let num = Int("10") -> 타입: int
// 자동으로 문자열 10을 Int형 10으로 변환시킴
// num 타입형: optional Int
let num = Int("10")


// optional 고급 기능 4가지

// Forced unwrapping -> 억지로 박스를 까보기
// Optional binding (if let) -> 부드럽게 박스를 까보기 1
// Optional binding (guard) -> 부드럽게 박스를 까보기 2
// Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘보자

//carName = nil
//print(carName!)
// 값이 없는 경우 박스를 깔려 할 때

// optional을 해제하는법 (박스를 까는 법, optional이 nil이 아니어야한다.)
print(carName!)


//if let unwrappedCarName = carName {
//    print(unwrappedCarName)
//
//} else{
//    print("Car Name 없음")
//}


func printParsedInt(from: String){
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else {
        print("Int로 컨버팅 안됩니다.")
    }
}
// "10" 같이 사용하면 10 출력 "hello" 출력하면 Int로 컨버팅 안됩니다 출력
printParsedInt(from: "10")


//조금 더 효율적인 코드

//func printParsedInt(from: String){
//    guard let parsedInt = Int(from) else{
//        print("Int로 컨버팅 불가능. ")
//        return
//    }
//    print(parsedInt)
//}

// default 값 주는 코드
//carName = nil
carName = "Tesla"
let myCarName: String = carName ?? "모델 S"




// 도전 과제
// 1. 최애 음식 이름을 담는 변술흘 작성 ( String?),
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

//1
let favoriteFood: String? = "스시"

//2
if let foodName = favoriteFood{
    print(foodName)
} else{
    print("좋아하는 음식 없음")
}

//3
func printNickname(name: String?){
    guard let nickName = name else {
        print("nickname 만들어 보자")
        return
    }
    print(nickName)
}



printNickname(name: nil )
//printNickname(name: "승승")
