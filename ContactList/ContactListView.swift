//
//  ContactListView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI
//Здесь список контактов на экране Main
struct ContactListView: View {
    
    let persons: [Person]
    
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                PersonRowView(person: person)
            }
            .listStyle(.inset)
        }
    }
}

#Preview {
    ContactListView(persons: Person.getContactList())
}
