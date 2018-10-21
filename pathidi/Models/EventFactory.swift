//
//  EventFactory.swift
//  pathidi
//
//  Created by Alessandro Musto on 10/7/18.
//  Copyright © 2018 Lmusto. All rights reserved.
//

import Foundation


enum EventType {
    case chat, tour
}

class EventFactory {
    static func createPath(eventType: EventType, dict: [String: Any]) -> Event {
        switch eventType {
        case .chat:
            return Chat(dict: dict)
        case .tour:
            return Tour(dict: dict)
        }
    }
}
