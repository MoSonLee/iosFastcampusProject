import UIKit


// Queue - Main, Global, Custom

// - Main
DispatchQueue.main.async {
    // UI update
    let view = UIView()
//    view.backgroundColor = UIColor
}

// - Global
DispatchQueue.global(qos: .userInteractive).async {
    // 진짜 중요한것, 우선 순위가 가장 높은 것
}

DispatchQueue.global(qos: .userInitiated).async {
    // 거의 바로 해줘야 할 것, 사용자가 결과를 기다릴 때
}

DispatchQueue.global(qos: .default).async {
    // 우선 순위를 신경 써주지 않을때 굳이 해야할 때
}

DispatchQueue.global().async {
    // default를 쓸바에 이걸 써줌
}

DispatchQueue.global(qos: .utility).async {
    // 시간이 좀 걸리는 일들, 사용자가 당장 기다리지 않는 것, 네트워킹, 큰 파일 불러울 때
}

DispatchQueue.global(qos: .background).async {
    // 사용자한테 당장 인식될 필요가 없는 것들, 뉴스 데이터 미리 받기, 위치 정보 업데이트, 영상을 다운 받을 때
}

// - Custom Queue
// 큐를 직접 만들어서 쓸 수 있다.
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)


// 복합적인 상황

func downloadImageFromServer() -> UIImage {
    // Heavy Task
    return UIImage()
}

func updateUI(image: UIImage){
    
}
DispatchQueue.global(qos: .background).async {
    // download
    let image = downloadImageFromServer()

    DispatchQueue.main.async {
        // update ui
        updateUI(image: image)
    }
}


// Sync, Async

// Async

DispatchQueue.global(qos: .background).async {
    for i in 0...5{
        print("⭐️\(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5{
        print("🚘\(i)")
    }
}

// sync

DispatchQueue.global(qos: .background).sync {
    for i in 0...5{
        print("⭐️\(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).sync {
    for i in 0...5{
        print("🚘\(i)")
    }
}
