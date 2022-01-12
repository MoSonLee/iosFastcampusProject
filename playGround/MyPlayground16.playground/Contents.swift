import UIKit


struct PersonStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


class PersonClass {
    
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

// class는 reference 타입( 같은 것을 지칭하고 있으니까 값이 둘 다 바뀜)
personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName


personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName

personClass1 = personClass2
personClass1.firstName
personClass2.firstName
