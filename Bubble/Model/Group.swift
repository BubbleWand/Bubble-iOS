//
//  Groups.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/19/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

public struct Group: Codable {
    let name: String?
    let image: String
}

// model for group in groupslist / groups table cell // dummy data
struct Group2 {
    var title: String
    var image: UIImage
}
