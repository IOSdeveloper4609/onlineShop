//
//  CustomCollectionViewCell.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
 
     let myImageView = UIImageView()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupWithModel(model: BunnerModel) {
        myImageView.image = model.image
    }
}

extension CustomCollectionViewCell {
    
    func setupViews() {
        addViews()
        setupLayout()
        setupAutoresizingMask()
        setupImageView()
    }
    
    func setupImageView() {
        myImageView.contentMode = .scaleAspectFill
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = 20
        myImageView.layer.masksToBounds = true
    }
    
    func setupAutoresizingMask() {
        myImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addViews() {
        contentView.addSubview(myImageView)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            myImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            myImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            myImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            myImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

