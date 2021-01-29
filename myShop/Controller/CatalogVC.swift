//
//  CatalogViewController.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

class CatalogViewController: UIViewController {
    
    let cellSpacingHeight: CGFloat = 5
    let genderArray = [ "Женское", "Мужское", "Детское"]
    var segmentcontroll = UISegmentedControl()
    let Identifier = "Cell"
    let tableView = UITableView()
    var catalogBunnersArray = ProductWomen.woomenCatalogBunners
   
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupNavController()
        setupSegmentedcontrol()
        setupTableView()
       
        
       
    }
    
    func setupNavController() {
        navigationItem.title = "Каталог"
    }
    
    @objc func setupSegmentControl() {
        switch segmentcontroll.selectedSegmentIndex {
        case 0:
            catalogBunnersArray = ProductWomen.woomenCatalogBunners
            tableView.reloadData()
        case 1:
            catalogBunnersArray = ProductWomen.menCatalogBunners
            tableView.reloadData()
        case 2:
            catalogBunnersArray = ProductWomen.kidsCatalogBunners
            tableView.reloadData()
        default:
            break
        }
    }
    
    func setupSegmentedcontrol() {
        segmentcontroll  = UISegmentedControl(items: self.genderArray)
        segmentcontroll.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentcontroll)
        segmentcontroll.addTarget(nil, action: #selector(setupSegmentControl), for: .valueChanged)
        
        NSLayoutConstraint.activate([
            segmentcontroll.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            segmentcontroll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            segmentcontroll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30)
        ])
    }
    
    private func setupTableView() {
        tableView.showsVerticalScrollIndicator = true
        tableView.allowsSelection = true
        tableView.separatorStyle = .none
        tableView.rowHeight = 100
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CatalogCell.self, forCellReuseIdentifier: Identifier)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: segmentcontroll.bottomAnchor,constant: 10),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row <= 0 {
            let sneakersVC = WomenSneakersVC()
            navigationController?.pushViewController(sneakersVC, animated: true)
        } else if indexPath.row <= 1 {
            let bootsVC = WomenBootsVC()
            navigationController?.pushViewController(bootsVC, animated: true)
        } else if indexPath.row >= 2 {
            let emptyVC = EmptyViewController()
            navigationController?.pushViewController(emptyVC, animated: true)
        }
    }
}

