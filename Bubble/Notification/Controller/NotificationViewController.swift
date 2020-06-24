//
//  NotificationViewController.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/9/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class NotificationViewController: ViewController {
    
    
    let notificationTableView = UITableView()
    
    var images = ["circle", "placeholder", "placeholder", "placeholder"]
    
    let mockData = [Notification2(title: "Notification 1", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 2", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 3", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 4", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 5", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 6", image: UIImage(named: "placeholder")!),
                    Notification2(title: "Notification 7", image: UIImage(named: "placeholder")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationTableView.register(NotificationCell.self, forCellReuseIdentifier: "cell")
        setUpTableView()
    }
    
    func setUpTableView(){
        view.addSubview(notificationTableView)
        notificationTableView.translatesAutoresizingMaskIntoConstraints = false
        notificationTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        notificationTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        notificationTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        notificationTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        notificationTableView.rowHeight = 100
        
        notificationTableView.delegate = self
        notificationTableView.dataSource = self
    }
    
}

extension NotificationViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotificationCell
        //        cell.imageView = UIImageView(image: (UIImage(named: "\(images[indexPath.row])")))
        cell.setCellContents(group: mockData[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected item in row \(indexPath.row)")
//        let nextView: GroupInfoViewController = GroupInfoViewController()
//        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
}
