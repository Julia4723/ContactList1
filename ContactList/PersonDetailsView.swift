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
        
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                Spacer()

            }
            
            Text("Phone: \(person.phoneNumber)")
            Text ("Email \(person.email)")
           
        }
        
        .navigationTitle(person.fullName)
        Spacer()
       
    }
        
}


#Preview {
    PersonDetailsView(person: Person.getContact())
}
