//
//  GroupsViewController.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/9/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class GroupsListViewController: UIViewController {
    
    let groupTableView = UITableView()
    
    var images = ["circle", "placeholder", "placeholder", "placeholder"]
    
    let mockData = [Group2(title: "Group 1", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 2", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 3", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 4", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 5", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 6", image: UIImage(named: "placeholder")!),
                    Group2(title: "Group 7", image: UIImage(named: "placeholder")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupTableView.register(GroupsTableCell.self, forCellReuseIdentifier: "cell")
        setUpTableView()
    }
    
        func setUpTableView(){
            view.addSubview(groupTableView)
            groupTableView.translatesAutoresizingMaskIntoConstraints = false
            groupTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            groupTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            groupTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            groupTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            groupTableView.rowHeight = 100
            
            groupTableView.delegate = self
            groupTableView.dataSource = self
        }
    
}

extension GroupsListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GroupsTableCell
//        cell.imageView = UIImageView(image: (UIImage(named: "\(images[indexPath.row])")))
        cell.setCellContents(group: mockData[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentImage = UIImageView(image: (UIImage(named: "\(images[indexPath.row])")))
//        let imageCrop = currentImage.getCropRatio()
//        return tableView.frame.width / imageCrop
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected item in row \(indexPath.row)")
        let nextView: GroupInfoViewController = GroupInfoViewController()
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
}
