//
//  ContactCellView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI
//Здесь одна ячейка для экрана Contacts
struct ContactSectionView: View {
   
    let person: Person
    
    var body: some View {
        
        List {
            Section(header: Text(person.fullName)) {
                Label(person.phoneNumber, systemImage: "phone")
                Label(person.email, systemImage: "mail")
            }
        }
    }
}


#Preview {
    ContactSectionView(person: Person.getContact())
}
