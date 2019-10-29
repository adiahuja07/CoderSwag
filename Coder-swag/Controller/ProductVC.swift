//
//  ProductVC.swift
//  Coder-swag
//
//  Created by Appinventiv on 16/10/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    
    @IBOutlet weak var productCollectionView: UICollectionView!

    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    
    func initProducts(category: Category) {
        navigationItem.title = category.title
        products = DataServices.shared.getProducts(forCategoryTitle: category.title)
        
    }

}

extension ProductVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        else {
            return ProductCell()
        }
    }
    
    
    
}
