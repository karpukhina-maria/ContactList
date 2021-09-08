//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Mary Jane on 08.09.2021.
//

import UIKit

class ContactListViewControllerWithSection: UITableViewController {
    
    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactIDWithSection", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "mail")
       }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
}
