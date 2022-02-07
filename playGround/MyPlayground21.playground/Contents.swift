import UIKit


// URLSessing

// 1. URLSessingConfiguration
// 2. URLSession
// 3. URLSessingTask를 이용해서 서버와 네트워킹

// URLSessionTask

// - dataTask
// - uploadTask
// - downloadTask

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

// URL

var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuert

//let dataTask = session.dataTask(with: <#T##URLRequest#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
