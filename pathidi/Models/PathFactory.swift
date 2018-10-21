//
//  PathFactory.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/7/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation

enum PathType {
    case career, school
}

class PathFactory {
    static func createPath(pathType: PathType, dict: [String:Any]) -> Path {
        switch pathType {
        case .career:
            return Career(dict: dict)
        case .school:
            return School(dict: dict)
        }
    }
}
