//
//  ProductCell.swift
//  Coder-swag
//
//  Created by Appinventiv on 16/10/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateView(product: Product) {
        
        productImg.image = UIImage(named: product.imgName)
        productPrice.text = product.price
        productTitle.text = product.title
    }
    
}
