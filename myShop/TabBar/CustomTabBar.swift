//
//  CustomTabBar.swift
//  myShop
//
//  Created by Азат Киракосян on 21.01.2021.
//

import UIKit

class CustomTabBar: UITabBarController {

    let mainVC = UINavigationController(rootViewController: MainViewController())
    let catalogVC = UINavigationController(rootViewController: CatalogViewController())
    let chosenVC = UINavigationController(rootViewController: ChosenViewController())
    
    var controllers: [UIViewController]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        controllers = [mainVC, catalogVC, chosenVC]
        tabBar.backgroundColor = .white
        setupItems()
        
    }
    
    func setupItems() {
        mainVC.tabBarItem = UITabBarItem(title: "Подборки", image: UIImage(named: "star"),tag: 0)
        catalogVC.tabBarItem = UITabBarItem(title: "Каталог", image: UIImage(named: "loupe"),tag: 1)
        chosenVC.tabBarItem = UITabBarItem(title: "Избранные", image: UIImage(named: "heart"),tag: 2)
    }
}
