//
//  Person.swift
//  ContactList
//
//  Created by Степан Фоминцев on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}
