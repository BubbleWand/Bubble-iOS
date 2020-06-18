//
//  HomeViewController.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/4/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    let tableView = UITableView()
    
    var images = ["placeholder", "placeholder", "placeholder", "placeholder"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PhotoFeedCell.self, forCellReuseIdentifier: "cell")
        setUpTableView()
    }
    
    func setUpTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        tableView.rowHeight = 100
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhotoFeedCell
        cell.backgroundView = UIImageView(image: (UIImage(named: "\(images[indexPath.row])")))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentImage = UIImageView(image: (UIImage(named: "\(images[indexPath.row])")))
//        let imageCrop = currentImage.getCropRatio()
//        return tableView.frame.width / imageCrop
        return tableView.frame.width
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected item in row \(indexPath.row)")
        let nextView: GroupsViewController = GroupsViewController()
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
}


extension UIImage {
    func getCropRatio() -> CGFloat {
        let widthRatio = CGFloat(self.size.width / self.size.height)
        return widthRatio
    }
}
