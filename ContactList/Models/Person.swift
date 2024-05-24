//
//  Person.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import Foundation


final class Person: Identifiable {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
     static func getContact() -> Person {
         let dataStore = DataStore.shared
         
      
         let names = dataStore.names.shuffled()
         let surnames = dataStore.surnames.shuffled()
         let emails = dataStore.emails.shuffled()
         let phones = dataStore.phones.shuffled()
         
         let name = names[Int.random(in: 0..<names.count)]
         let surname = surnames[Int.random(in: 0..<surnames.count)]
         let email = emails[Int.random(in: 0..<emails.count)]
         let phone = phones[Int.random(in: 0..<phones.count)]
         
         let newContact =  Person(name: name, surname: surname, email: email, phoneNumber: phone)
         
         return newContact
     }
     
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
     
    init(name: String, surname: String, email: String, phoneNumber: String) {
        
         self.name = name
         self.surname = surname
         self.email = email
         self.phoneNumber = phoneNumber
     }
}
