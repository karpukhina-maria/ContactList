//
//  DataManager.swift
//  ContactList
//
//  Created by Mary Jane on 07.09.2021.
//

final class DataManager {
    
    static let shared = DataManager()
    
    var names = [
        "John", "Aaron", "Tim", "Ted", "Steve",
        "Maria", "Rita", "Helene", "Monica", "Rachel"
    ]
    
    var surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth", "Jankins",
        "Linkoln", "Klinton", "Eastwood", "Chaplin", "Green"
    ]
    
    var phones = [
        "+7-919-123-44-55", "+7-916-345-66-55", "+7-919-567-88-33", "+7-917-789-33-55", "+7-919-567-33-33",
        "+7-919-123-99-00", "+7-917-123-44-55", "+7-919-777-44-99", "+7-919-111-44-55", "+7-919-890-33-45"
    ]
    
    var emails = [
        "aaa@email.com", "bbb@email.com", "ccc@email.com", "ddd@email.com", "eee@email.com",
        "fff@email.com", "ggg@email.com", "xxx@email.com", "zzz@email.com", "qqq@email.com"
    ]
    
    private init() { }
}
