//
//  SecondTableViewController.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return DataManager.countPersons
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return DataManager.persons[section].fullName
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emailCell = tableView.dequeueReusableCell(withIdentifier: "secondContactCell", for: indexPath)
        let phoneCell = tableView.dequeueReusableCell(withIdentifier: "secondContactCell", for: indexPath)
        
        let emailImage: UIImage = UIImage.init(systemName: "tray")!
        let phoneImage: UIImage = UIImage.init(systemName: "phone")!

        emailCell.textLabel?.text = DataManager.persons[indexPath.section].emailAddress
        emailCell.imageView?.image = emailImage
        
        phoneCell.textLabel?.text = DataManager.persons[indexPath.section].phoneNumber
        phoneCell.imageView?.image = phoneImage

        if indexPath.row == 1 {
            return emailCell
        } else {
            return phoneCell
        }
    }
}
