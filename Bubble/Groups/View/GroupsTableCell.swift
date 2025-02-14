//
//  GroupsTableCell.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/18/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//
//

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
