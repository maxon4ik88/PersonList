//
//  DataBase.swift
//  HW2.7
//
//  Created by Maxon on 10.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import Foundation

class DataManager {
    
    static var names = ["Alex", "Sam", "Maxim", "Anna", "James",
                        "Lars", "Jubilie", "Paul", "Jack", "Harry"]
    
    static var secondNames = ["Heatfield", "Ulrich", "Hemmet", "Butler",
                              "Osbourne", "Potter", "Daniels", "McCartney",
                              "Fox", "Firson"]
    
    static var emails = ["kitty@yandex.ru", "evillord@mail.ru", "riffmaster@rambler.ru",
                         "batman@yandex.ru", "dd@gmail.com", "magic@school.com",
                         "x-men@rambler.ru", "40@mail.ru", "britrock@great.com",
                         "mozilla@google.ru"]
    
    static var phoneNumbers = ["8-800-555-35-35", "8-499-666-32-66", "8-495-101-10-01",
                               "8-926-122-11-31", "8-911-521-98-46", "8-000-111-22-33",
                               "8-123-456-78-90", "8-812-312-65-23", "8-888-888-88-88",
                               "8-000-111-23-32"]
    
    static let countPersons = persons.count
    
    static var persons = [Person(), Person(), Person(), Person(), Person(), Person(), Person(), Person(), Person(), Person()]
}
