//
//  Alert.swift
//  myShop
//
//  Created by Азат Киракосян on 20.01.2021.
//

import UIKit

extension DetailViewController {
    
    func alert() {
        let alertController = UIAlertController(title: "К сожалению данного размера нету в наличии", message: " ", preferredStyle: .alert)
        let action = UIAlertAction(title: "назад", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func errorAlert() {
        let alertController = UIAlertController(title: "Для оформления заказа необходимо заполнить все поля", message: "пожалуйста заполните все поля ", preferredStyle: .alert)
        let action = UIAlertAction(title: "ОК", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func orderAlert() {
        let alertController = UIAlertController(title: "Заказ оформлен", message: "Мы свяжемся с Вами в ближайшее время", preferredStyle: .alert)
        let action = UIAlertAction(title: "ОК", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}
