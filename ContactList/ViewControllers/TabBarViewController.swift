//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Степан Фоминцев on 18.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - Private Properties
    private let persons = DataStore.getPersons()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    // MARK: - Private Methods
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let personListVC = $0 as? PersonListViewController {
                personListVC.persons = persons
            } else if let personListAdvancedVC = $0 as? PersonListAdvancedViewController {
                personListAdvancedVC.persons = persons
            }
        }
    }
}
