//
//  EmptyViewController.swift
//  myShop
//
//  Created by Азат Киракосян on 13.01.2021.
//

import UIKit

class EmptyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        alert()
    }
    
    func alert() {
        let allertcontroller = UIAlertController(title: "Пустая категория", message: "В данной категории пока нет товаров", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.navigationController?.popViewController(animated: true)
        }
        allertcontroller.addAction(action)
        self.present(allertcontroller, animated: true, completion: nil)
    }
}
