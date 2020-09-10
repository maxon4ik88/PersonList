//
//  PersonModel.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import Foundation

struct Person {
    var name: String = "someName"
    var secondName: String = "someSecondName"
    var phoneNumber: String = "somePhone"
    var emailAddress: String = "someEmail"
    
    var fullName: String {
        
        "\(name) \(secondName)"
        
    }
    
    init() {
        
        name = setProperty(propertys: &DataManager.names)
        secondName = setProperty(propertys: &DataManager.secondNames)
        phoneNumber = setProperty(propertys: &DataManager.phoneNumbers)
        emailAddress = setProperty(propertys: &DataManager.emails)
        
    }
    
    private func setProperty(propertys: inout [String]) -> String {
        if let randomProperty = propertys.randomElement() {
            for (index, property) in propertys.enumerated() {
                if property == randomProperty {
                    propertys.remove(at: index)
                }
            }
            return randomProperty
        } else {
            return "ERROR!"
        }
    }
    
}
