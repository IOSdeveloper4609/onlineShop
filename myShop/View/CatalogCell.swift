//
//  CatalogCell.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

class CatalogCell: UITableViewCell {
    
     var productImageView = UIImageView()
     let productLabel = UILabel()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupWithModel(model: BunnerModel2) {
        productImageView.image = model.image
        productLabel.text = model.label
    }
}

extension CatalogCell {
    
    func setupViews() {
        addViews()
        setupAutoresizingMask()
        setupLabel()
        setupImageView()
        setupLayout()
    }
    
    func addViews() {
        contentView.addSubview(productImageView)
        contentView.addSubview(productLabel)
    }
    
    func setupAutoresizingMask() {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLabel() {
        productLabel.font = UIFont.boldSystemFont(ofSize: 19)
    }
    
    func setupImageView() {
         productImageView.contentMode = .scaleAspectFill
         productImageView.layer.cornerRadius = 20
         productImageView.clipsToBounds = true
         productImageView.layer.masksToBounds = true
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            productImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            productImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -250),
            productImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            productLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 45),
            productLabel.leftAnchor.constraint(equalTo: productImageView.rightAnchor, constant: 30)
        ])
    }
}




