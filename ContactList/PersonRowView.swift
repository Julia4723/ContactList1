//
//  PersonRowView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI
//Здесь одна строка из контактов для экрана Maim
struct PersonRowView: View {
    
    let person: Person
    
    var body: some View {
        
        NavigationLink(person.fullName) {
            PersonDetailsView(person: person)
        } 
    }
}
    

#Preview {
    PersonRowView(person: Person.getContact())
}
