//
//  CategoryTableViewCell.swift
//  Coder-swag
//
//  Created by Appinventiv on 08/10/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImgView: UIImageView!
    @IBOutlet weak var categoryTtl: UILabel!
    
    func updateViews(category: Category) {
        categoryImgView.image = UIImage(named: category.imgName)
        categoryTtl.text = category.title
    }

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

  

}
