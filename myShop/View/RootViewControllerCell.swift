//
//  RootViewControllerCell.swift
//  myShop
//
//  Created by Азат Киракосян on 21.01.2021.
//

import UIKit

class RootViewControllerCell: UICollectionViewCell {
    
    let avatarImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        avatarImage.layer.cornerRadius = 15
        avatarImage.layer.masksToBounds = true
        avatarImage.clipsToBounds = true
        
        contentView.addSubview(avatarImage)
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            avatarImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30),
            avatarImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30),
            avatarImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupWithModel(model: BunnerModel) {
        avatarImage.image = model.image
    }
}











