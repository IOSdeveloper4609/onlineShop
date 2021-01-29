//
//  RootViewController.swift
//  myShop
//
//  Created by Азат Киракосян on 21.01.2021.
//

import UIKit

class RootViewController: UIViewController {
    
    let IdentifierColections = "CollectionCell"
    let transitionButton = UIButton()
    let pageControll = UIPageControl()
    
   
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let  collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout )
        return collectionView
    }()
    
    var data = [
        BunnerModel(image: #imageLiteral(resourceName: "Снимок экрана 2021-01-21 в 19.19.13")),
        BunnerModel(image: #imageLiteral(resourceName: "Снимок экрана 2021-01-21 в 19.20.10")),
        BunnerModel(image: #imageLiteral(resourceName: "Снимок экрана 2021-01-21 в 19.20.53")),
        BunnerModel(image: #imageLiteral(resourceName: "Снимок экрана 2021-01-21 в 19.21.31")),
        BunnerModel(image: #imageLiteral(resourceName: "Снимок экрана 2021-01-21 в 19.22.01")),
    ]
    
//    private let pageControll: UIPageControl = {
//
//
//
//        return pageControll
//    }()
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        setupCollectionView()
        setupPageControll()
        setupButton()
    }
    
    
    func setupPageControll() {
        pageControll.translatesAutoresizingMaskIntoConstraints = false
        pageControll.numberOfPages = data.count
        pageControll.backgroundColor = .purple
        view.addSubview(pageControll)
        
        pageControll.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 35).isActive = true
        pageControll.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControll.heightAnchor.constraint(equalToConstant: 50).isActive = true
        pageControll.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    private func setupCollectionView() {
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        collectionView.register(RootViewControllerCell.self, forCellWithReuseIdentifier: IdentifierColections)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        NSLayoutConstraint.activate([
            collectionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 125),
            collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            collectionView.widthAnchor.constraint(equalToConstant: 400),
            collectionView.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
    func setupButton() {
        transitionButton.translatesAutoresizingMaskIntoConstraints = false
        transitionButton.setTitle("Перейти в магазин", for: .normal)
        transitionButton.backgroundColor = .blue
        transitionButton.layer.cornerRadius = 15
        transitionButton.clipsToBounds = true
        transitionButton.layer.masksToBounds = true
        transitionButton.tintColor = .white
        view.addSubview(transitionButton)
        transitionButton.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            transitionButton.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 110),
            transitionButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            transitionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            transitionButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc  func actionButton() {
        let mainVC = CustomTabBar()
        mainVC.modalPresentationStyle = .fullScreen
        mainVC.viewControllers = mainVC.controllers
        self.present(mainVC, animated: true, completion: nil)
    }
}


