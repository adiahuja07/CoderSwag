//
//  ViewController.swift
//  Coder-swag
//
//  Created by Appinventiv on 08/10/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit
//87 39 40 bar color

class CategoriesVC: UIViewController {
    
    @IBOutlet weak var categoryTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
    }


}

extension CategoriesVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.shared.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.updateViews(category: DataServices.shared.getCategories()[indexPath.row])
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.shared.getCategories()[indexPath.row]
        performSegue(withIdentifier: "goToProduct", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            let backBtn = UIBarButtonItem()
            backBtn.title = ""
            navigationItem.backBarButtonItem = backBtn
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
}

