//
//  User.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/10.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extrasNapkins   = false
    var frequentRefills = false
}
