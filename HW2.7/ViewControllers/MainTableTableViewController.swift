//
//  MainTableTableViewController.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import UIKit

class MainTableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.countPersons
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        cell.textLabel?.text = DataManager.persons[indexPath.row].fullName
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsVC.toName = DataManager.persons[indexPath.row].name
        detailsVC.toSurName = DataManager.persons[indexPath.row].secondName
        detailsVC.toPhone = DataManager.persons[indexPath.row].phoneNumber
        detailsVC.toEmail = DataManager.persons[indexPath.row].emailAddress
        
    }

}
