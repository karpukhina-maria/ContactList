//
//  TabBarController.swift
//  ContactList
//
//  Created by Mary Jane on 08.09.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    var contactList: [Person] = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let contactListVC = navigationVC.topViewController as? ContactListTableViewController {
                contactListVC.contactList = contactList
            } else if let contactListVCWithSections = navigationVC.topViewController as? ContactListViewControllerWithSection {
                contactListVCWithSections.contactList = contactList
            }
        }
    }
    
}
