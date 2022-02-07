import UIKit


// URL

let urlString = "https://www.naver.com/"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme
url?.host
url?.path
url?.query
url?.baseURL

let baseURL = URL(string: "https://www.naver.com/")


// URLComponents

var urlComponents = URLComponents(string: "https://www.naver.com/")

