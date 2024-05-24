//
//  PersonDetailsView.swift
//  ContactList
//
//  Created by user on 23.05.2024.
//

import SwiftUI
//Здесь экран с детальной информацией по тапу на контакт в списке
struct PersonDetailsView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                Text("Phone: \(person.phoneNumber)")   
                Text ("Email \(person.email)")
            }
            .padding(.top, 16)
            .padding(.trailing, 150)
            .font(.title2)
            .navigationTitle(person.fullName)
        }
        Spacer()
       
    }
        
}


#Preview {
    PersonDetailsView(person: Person.getContact())
}
