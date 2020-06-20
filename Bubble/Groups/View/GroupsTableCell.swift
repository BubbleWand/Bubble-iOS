//
//  GroupsTableCell.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/18/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//
//
//import Foundation
//import UIKit
//
//class GroupsTableCell: UITableViewCell {
//
//    var groupImage: UIImageView = {
//        var groupImage = UIImageView()
//        groupImage.layer.masksToBounds = false
//        groupImage.layer.borderColor = UIColor.white.cgColor
//        groupImage.layer.cornerRadius = groupImage.frame.size.width / 2
//        groupImage.clipsToBounds = true
//        groupImage.translatesAutoresizingMaskIntoConstraints = false
////        return groupImage
//
////        let image = UIImage(named: "imageName")
//         groupImage.layer.borderWidth = 1.0
//         groupImage.layer.masksToBounds = false
//         groupImage.layer.borderColor = UIColor.white.cgColor
//         groupImage.layer.cornerRadius =  groupImage.frame.size.width / 2
//         groupImage.clipsToBounds = true
//        return groupImage
//    }()
//
//
//    let title: UILabel = {
//        let title = UILabel()
//        title.lineBreakMode = NSLineBreakMode.byWordWrapping
//        title.numberOfLines = 0
//        title.adjustsFontSizeToFitWidth = true
//        title.translatesAutoresizingMaskIntoConstraints = false
//
//        title.textColor = .black
//        return title
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        contentView.addSubview(title)
//        contentView.addSubview(groupImage)
//        setUpImage()
//        setUpTitle()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
////    func setUpImage() {
////        groupImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
////        groupImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
////        groupImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
////        groupImage.widthAnchor.constraint(equalTo: groupImage.heightAnchor, multiplier: 16/9).isActive = true
////    }
//
//    func setUpImage() {
//        groupImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        groupImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
////        groupImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
////        groupImage.widthAnchor.constraint(equalTo: groupImage.heightAnchor, multiplier: 16/9).isActive = true
//    }
//
//    func setUpTitle() {
//        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
//        title.heightAnchor.constraint(equalToConstant: 80).isActive = true
//    }
//
//    func setUpCellContents(group: Group2) {
//        groupImage.image = group.image
//        title.text = group.title
//    }
//
//}

import Foundation
import UIKit

class GroupsTableCell: UITableViewCell{
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let title: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirNext-Bold", size: 20)
        title.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let groupImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.85).isActive = true
        stackView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.75).isActive = true
        stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(groupImage)
        groupImage.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.25).isActive = true
        
        stackView.addArrangedSubview(title)
        title.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.55).isActive = true
        
    }
    
    func setCellContents(group: Group2){
        groupImage.image = group.image
        title.text = group.title
    }
    

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
