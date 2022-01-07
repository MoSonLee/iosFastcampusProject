import UIKit

func getfullName(firstname: String, lastname: String){
  print ("fullname is " + firstname + lastname)
    
}

getfullName(firstname: "Lee", lastname: "seunghoo")


func getFullName2(_ firstname: String, _ lastname: String){
    let fullname = firstname + lastname
    print(fullname)
}

getFullName2("Lee", "seunghoo")


func getFullname3(firstname: String, lastname: String) -> String{
    let name = firstname + lastname
    return name
}

let name = getFullname3(firstname: "Lee", lastname: "seunghoo")

print(name)


