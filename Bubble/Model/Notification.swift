//
//  Notification.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/24/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

public struct Notification: Codable {
    let name: String?
    let image: String
    let text: String
}

// model for group in groupslist / groups table cell // dummy data
struct Notification2 {
    var title: String
    var image: UIImage
}


