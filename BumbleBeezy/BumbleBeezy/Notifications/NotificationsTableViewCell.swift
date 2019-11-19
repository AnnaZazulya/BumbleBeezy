//
//  NotificationsTableViewCell.swift
//  BumbleBeezy
//
//  Created by Аня on 18.11.19.
//  Copyright © 2019 An. All rights reserved.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var typeLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!
    @IBOutlet private weak var backgroundContentView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundContentView.clipsToBounds = true
        backgroundContentView.layer.cornerRadius = 8
    }
    
    func setup(type: NotificationType, title: String, message: String, date: Date) {
        typeLabel.text = type.title
        typeLabel.font = type.font
        backgroundContentView.backgroundColor = type.backgroundColor
        
        titleLabel.text = title
        messageLabel.text = message
    }
    
}
