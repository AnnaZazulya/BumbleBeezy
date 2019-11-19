//
//  NotificationListViewController.swift
//  BumbleBeezy
//
//  Created by Аня on 16.11.19.
//  Copyright © 2019 An. All rights reserved.
//

import UIKit

class NotificationListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let cellName = String(describing: NotificationsTableViewCell.self)
    
    fileprivate let items: [NotificationItem] = NotificationItem.stubItems
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load")
        
        let nib = UINib(nibName: cellName, bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: cellName)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view will appear")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

extension NotificationListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let someCell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        
        guard let cell = someCell as? NotificationsTableViewCell else {
            return UITableViewCell()
        }
        let item = items[indexPath.row]
        cell.setup(type: item.type, title: item.title, message: item.message, date: item.date)
        
        return cell
    }
}

extension NotificationListViewController: UITableViewDelegate {
    
}

