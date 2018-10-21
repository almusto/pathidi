//
//  User.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/7/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation

class User {
    var firstName: String!
    var lastName: String!
    var communityName: String!
    var email: String!
    var events: [String]!
    var Name: String! {
        get {
            return firstName + " " + lastName
        }
    }
}
