//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Степан Фоминцев on 18.04.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
