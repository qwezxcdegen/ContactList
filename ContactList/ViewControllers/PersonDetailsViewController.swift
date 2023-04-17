//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Степан Фоминцев on 18.04.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
