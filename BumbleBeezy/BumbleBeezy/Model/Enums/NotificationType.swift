//
//  NotificationType.swift
//  BumbleBeezy
//
//  Created by Аня on 18.11.19.
//  Copyright © 2019 An. All rights reserved.
//

import Foundation
import UIKit.UIImage

enum NotificationType {
    case notify
    case alert
    case calendar
   
    var title: String {
        switch self {
        case .notify:
            return "Notify"
        case .alert:
            return "Alert"
        case .calendar:
            return "Calendar"
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .alert:
            return UIImage(named: "first")
        default:
            return UIImage(named: "second")
        }
    }
    
    var font: UIFont {
        switch self {
        case .alert:
            return UIFont.boldSystemFont(ofSize: 12)
        default:
            return UIFont.systemFont(ofSize: 12)
        }
    }
    
    var typeColor: UIColor {
        switch self {
        case .alert:
            return UIColor.black
        default:
            return UIColor.gray
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .alert:
            return UIColor.red.withAlphaComponent(0.5)
        default:
            return UIColor.green.withAlphaComponent(0.5)
        }
    }
}
