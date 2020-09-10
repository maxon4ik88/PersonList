//
//  PersonDetailsViewController.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var toName: String!
    var toSurName: String!
    var toPhone: String!
    var toEmail: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = toName {
            nameLabel.text = name
        }
        if let surName = toSurName {
            surNameLabel.text = surName
        }
        if let phone = toPhone {
            phoneLabel.text = phone
        }
        if let email = toEmail {
            emailLabel.text = email
        }
        
    }
}
