//
//  PhotoFeedCell.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/17/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class PhotoFeedCell: UITableViewCell {
    
    var photoImage: UIImageView = {
        var photoImage = UIImageView()
        photoImage.layer.cornerRadius = 10
        photoImage.clipsToBounds = true
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        return photoImage
    }()
    
    let title: UILabel = {
        let title = UILabel()
        title.lineBreakMode = NSLineBreakMode.byWordWrapping
        title.numberOfLines = 0
        title.adjustsFontSizeToFitWidth = true
        
        title.textColor = .white
        return title
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(photoImage)
        setUpImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpImage() {
        
        photoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        photoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        photoImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        photoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
}
