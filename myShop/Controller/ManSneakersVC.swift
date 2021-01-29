//
//  ManSneakersVC.swift
//  myShop
//
//  Created by Азат Киракосян on 22.01.2021.
//

import UIKit

class ManSneakersVC: UIViewController {

    
    var sneakersArray = ProductMan.ManCatalogBunners
    var identifier = "Cell"
    let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let  collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout )
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupCollectionView()
        setupNavController()
    }
    
    func setupNavController() {
        navigationItem.title = "Кроссовки"
    }
    
    private func setupCollectionView() {
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = false
        collectionView.register(ManSneakersCell.self, forCellWithReuseIdentifier: identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        NSLayoutConstraint.activate([
            collectionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    

   

}
