//
//  UserFactory.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/7/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation


enum UserType {
    case guide, explorer
}


class UserFactory {
    static func createUser(userType: UserType, dict: [String: Any]) -> User {
        switch userType {
            case .guide:
                return Guide(dict: dict)
        case .explorer:
            return Explorer(dict: dict)
        }
    }
}
