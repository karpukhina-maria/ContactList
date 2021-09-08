//
//  ViewController.swift
//  ContactList
//
//  Created by Mary Jane on 07.09.2021.
//

import UIKit

class ContactDetailViewController: UIViewController {    
   
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}

