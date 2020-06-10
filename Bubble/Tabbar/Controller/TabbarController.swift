//
//  TabbarViewController.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/4/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    var fourthItemImageView: UIImageView!
    var fifthItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
        setupTabBarIcons()
        self.delegate = self
        self.tabBar.tintColor = UIColor(red:0.49, green:0.84, blue:0.87, alpha:1.0)
    }
    
    func setupViewControllers(){
        
        let homeVC = HomeViewController()
        let navController = UINavigationController(rootViewController:homeVC)
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tab-home"), tag: 0)
        
        
        let GroupsVC = GroupsViewController()
        let navController2 = UINavigationController(rootViewController: GroupsVC)
        GroupsVC.tabBarItem = UITabBarItem(title: "Bubbles", image: UIImage(named: "tab-profile"), tag: 1)
        
        let MapVC = MapViewController()
        let navController3 = UINavigationController(rootViewController: MapVC)
        MapVC.tabBarItem = UITabBarItem(title: "Map", image: UIImage(named: "tab-profile"), tag: 2)
        
        
        let NotificationVC = NotificationViewController()
        let navController4 = UINavigationController(rootViewController: NotificationVC)
        navController4.tabBarItem = UITabBarItem(title: "Notification Center", image: UIImage(named: "tab-more"), tag: 3)
        
        let ProfileVC = ProfileViewController()
        let navController5 = UINavigationController(rootViewController: ProfileVC)
        navController5.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "tab-profile"), tag: 4)
        
        
        viewControllers = [navController, navController2, navController3, navController4, navController5]
        
    }
    
    func setupTabBarIcons(){
        
        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemView = self.tabBar.subviews[2]
        let fourthItemView = self.tabBar.subviews[3]
        let fifthItemView = self.tabBar.subviews[4]
        
        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center
        
        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
        
        self.fourthItemImageView = (fourthItemView.subviews.first as! UIImageView)
        self.fourthItemImageView.contentMode = .center
        
        self.fifthItemImageView  = (fifthItemView.subviews.first as! UIImageView)
        self.fifthItemImageView.contentMode = .center
        
    }
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0{
            firstItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.firstItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 1{
            secondItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.secondItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 2{
            thirdItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.thirdItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 3{
            fourthItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.fourthItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 4{
            fourthItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.fourthItemImageView.transform = .identity
            }, completion: nil)
        }
    }
}
