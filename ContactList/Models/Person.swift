//
//  Person.swift
//  ContactList
//
//  Created by Mary Jane on 07.09.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        let dataManager = DataManager.shared
        var contactList: [Person] = []
        for _ in 1...dataManager.names.count {
            
            let name = dataManager.names.randomElement()
            let surname = dataManager.surnames.randomElement()
            let phone = dataManager.phones.randomElement()
            let email = dataManager.emails.randomElement()
            
            let person = Person(name: name ?? "no name",
                                surname: surname ?? "no surname",
                                phone: phone ?? "no phone",
                                email: email ?? "no email")
            contactList.append(person)
            
            dataManager.names.removeAll { $0 == name }
            dataManager.surnames.removeAll { $0 == surname }
            dataManager.phones.removeAll { $0 == phone }
            dataManager.emails.removeAll { $0 == email }
        }
        return contactList
    }
}
