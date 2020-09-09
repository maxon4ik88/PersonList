//
//  PersonModel.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let secondName: String
    let phoneNumber: String
    let emailAddress: String
    
    var fullName: String {
        
        "\(name) \(secondName)"
        
    }
    
    init() {
        if let randomName = DataManager.names.randomElement() {
            self.name = randomName
            for (index, name) in DataManager.names.enumerated() {
                if name == randomName {
                    DataManager.names.remove(at: index)
                }
            }
        } else {
            self.name = "ERROR!"
        }
        
        if let randomSecondName = DataManager.secondNames.randomElement() {
            self.secondName = randomSecondName
            for (index, secondName) in DataManager.secondNames.enumerated() {
                if secondName == randomSecondName {
                    DataManager.secondNames.remove(at: index)
                }
            }
        } else {
            self.secondName = "ERROR!"
        }
        
        if let randomPhone = DataManager.phoneNumbers.randomElement() {
            self.phoneNumber = randomPhone
            for (index, phone) in DataManager.phoneNumbers.enumerated() {
                if phone == randomPhone {
                    DataManager.phoneNumbers.remove(at: index)
                }
            }
        } else {
            self.phoneNumber = "ERROR!"
        }
        
        if let randomEmail = DataManager.emails.randomElement() {
            self.emailAddress = randomEmail
            for (index, email) in DataManager.emails.enumerated() {
                if email == randomEmail {
                    DataManager.emails.remove(at: index)
                }
            }
        } else {
            self.emailAddress = "ERROR!"
        }
    }
}
