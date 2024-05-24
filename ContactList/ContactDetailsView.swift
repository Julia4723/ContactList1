//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI
//Здесь список контактов для экрана Contacts
struct ContactDetailsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            Form {
                List(contacts) { contact in
                    ContactSectionView(person: contact)
                   
                }
                .listStyle(.automatic)
            }
        }
       
        
    }

}

#Preview {
    ContactDetailsView(contacts: Person.getContactList())
}
