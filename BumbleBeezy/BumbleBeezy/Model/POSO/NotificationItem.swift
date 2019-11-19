//
//  NotificationItem.swift
//  BumbleBeezy
//
//  Created by Аня on 18.11.19.
//  Copyright © 2019 An. All rights reserved.
//

import Foundation

struct NotificationItem {
    let type: NotificationType
    let title: String
    let message: String
    let date: Date
    
    init(type: NotificationType, title: String, message: String, date: Date) {
        self.type = type
        self.title = title
        self.message = message
        self.date = date
    }
}

extension NotificationItem {
    static var stubItems: [NotificationItem] {
        return [
            NotificationItem(type: .alert, title: "Hey", message: "Don't forget to check your duties", date: Date()),
            NotificationItem(type: .notify, title: "Car service", message: "Check oil level", date: Date().addingTimeInterval(15)),
            NotificationItem(type: .calendar, title: "Ann's birthday is coming", message: "Next week Ann's birthday party! Don't forget to bring your present. 22 December 16:00", date: Date().addingTimeInterval(24))
        ]
    }
}
