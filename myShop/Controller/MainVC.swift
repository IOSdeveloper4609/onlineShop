//
//  RootViewController.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    let IdentifierTable = "TableCell"
    let IdentifierColections = "CollectionCell"
    let tableView = UITableView()
    var segmentcontroll = UISegmentedControl()
    let genderArray = [ "Женское", "Мужское", "Детское"]
    var bunnersCollectionViewArray = Bunners.woomenBunnersCollectionView
    var bunnersTableViewArray = Bunners2.woomenBunnersTableView
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let  collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout )
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupNavController()
        setupSegmentedcontrol()
        setupCollectionView()
        setupTableView()
       
      
    }
    
    private  func setupTableView() {
        tableView.showsVerticalScrollIndicator = true
        tableView.separatorColor = .systemGray
        tableView.separatorStyle = .none
        tableView.rowHeight = 500
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: IdentifierTable)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 5),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc func setupSegmentControl() {
        switch segmentcontroll.selectedSegmentIndex {
        case 0:
            bunnersCollectionViewArray = Bunners.woomenBunnersCollectionView
            collectionView.reloadData()
            bunnersTableViewArray = Bunners2.woomenBunnersTableView
            tableView.reloadData()
        case 1:
            bunnersCollectionViewArray = Bunners.manBunnersCollectionView
            collectionView.reloadData()
            bunnersTableViewArray = Bunners2.manBunnersTableView
            tableView.reloadData()
        case 2:
            bunnersCollectionViewArray = Bunners.kidsBunnersCollectionView
            collectionView.reloadData()
            bunnersTableViewArray = Bunners2.kidsBunnersTableView
            tableView.reloadData()
        default:
            break
        }
    }
    
    func setupNavController() {
        navigationItem.title = "Мой магазин "
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
    
    private func setupCollectionView() {
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = false
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: IdentifierColections)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: segmentcontroll.bottomAnchor,constant: 10),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
            collectionView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}



