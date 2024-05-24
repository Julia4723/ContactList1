//
//  ContentView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ContactListView(persons: Person.getContactList())
                    .tabItem {
                        Image(systemName: "house")
                        Text("Main")
                    }
                
                
                ContactDetailsView(contacts: Person.getContactList())
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Person")
                    }
                 
            }
            .navigationTitle("Persons List")
        }
        
        
    }
}

#Preview {
    ContentView()
}
