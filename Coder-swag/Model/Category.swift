//
//  Category.swift
//  Coder-swag
//
//  Created by Appinventiv on 08/10/19.
//  Copyright © 2019 q. All rights reserved.
//

import Foundation



struct Category {
    
    private(set) public var title: String
    private(set) public var imgName: String
    
    init(title: String, imgName: String) {
        self.title = title
        self.imgName = imgName
    }
}
