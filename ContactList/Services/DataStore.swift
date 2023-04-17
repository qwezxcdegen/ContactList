//
//  DataStore.swift
//  ContactList
//
//  Created by Степан Фоминцев on 18.04.2023.
//

import Foundation

final class DataStore {
    private static var names = [
        "John",
        "Nick",
        "Kobe",
        "Robert",
        "Donald",
        "Steve",
        "Larry"
    ]
    
    private static var surnames = [
        "Collis",
        "Curtis",
        "Dooley",
        "Evans",
        "Lawlor",
        "Newson",
        "Shepherd"
    ]
    
    private static var phones = [
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000)),
        String(Int.random(in: 500000...600000))
    ]
    
    private static var emails = [
        "aaa@mail.ru",
        "aaabb@proton.me",
        "aaacc@hotmail.com",
        "aaaww@yahoo.com",
        "aaaqwe@yandex.ru",
        "aaa123@mail.ru",
        "pppp@gmail.com"
    ]
    
    static func getPersons() -> [Person] {
        names.shuffle()
        surnames.shuffle()
        phones.shuffle()
        emails.shuffle()
        
        var persons: [Person] = []
        for i in 0..<names.count {
            persons.append(
                Person(
                    name: names[i],
                    surname: surnames[i],
                    phone: phones[i],
                    email: emails[i]
                )
            )
        }
        return persons
    }
}
