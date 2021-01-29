//
//  ManSneakersCell.swift
//  myShop
//
//  Created by Азат Киракосян on 22.01.2021.
//

import UIKit

class ManSneakersCell: UICollectionViewCell {
 
    var productImageView = UIImageView()
    let productNameLabel = UILabel()
    let originalProductLabel = UILabel()
    let priceProductLabel = UILabel()
    var heartWhiteButton = UIButton()
    let heartRedButton = UIButton()
    let heartImage = UIImage(named: "heart")
    let heartRedImage = UIImage(named: "redHeart")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupRedHeartButton()
        setupWhiteHeartButton()
        setupViews()
        
    }
    
    func setupRedHeartButton() {
        heartRedButton.setImage(heartRedImage, for: .normal)
        heartRedButton.contentMode = .scaleToFill
        heartRedButton.isHidden = true
    }
    
    func setupWhiteHeartButton() {
        heartWhiteButton.setImage(heartImage, for: .normal)
        heartWhiteButton.contentMode = .scaleToFill
        heartWhiteButton.addTarget(self, action: #selector(actionWhiteButton), for: .touchUpInside)
    }
    
    @objc func actionWhiteButton () {
        heartWhiteButton.isHidden = true
        heartRedButton.isHidden = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupWithModel(model: ProductModel) {
        productImageView.image = model.image
        productNameLabel.text = model.name
        originalProductLabel.text = model.original
        priceProductLabel.text = model.price
    }
}

extension ManSneakersCell {
    
    func setupViews() {
        addViews()
        setupAutoresizingMask()
        setupImageViews()
        setupLabels()
        setupButtons()
        setupLayout()
    }
    
    func addViews() {
        contentView.addSubview(productImageView)
        contentView.addSubview(productNameLabel)
        contentView.addSubview(originalProductLabel)
        contentView.addSubview(priceProductLabel)
        contentView.addSubview(heartWhiteButton)
        contentView.addSubview(heartRedButton)
    }
    
    func setupAutoresizingMask() {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        originalProductLabel.translatesAutoresizingMaskIntoConstraints = false
        priceProductLabel.translatesAutoresizingMaskIntoConstraints = false
        heartWhiteButton.translatesAutoresizingMaskIntoConstraints = false
        heartRedButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupImageViews() {
        productImageView.contentMode = .scaleAspectFit
    }
    
    func setupLabels() {
        productNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        originalProductLabel.font = UIFont.boldSystemFont(ofSize: 17)
        priceProductLabel.font = UIFont.boldSystemFont(ofSize: 17)
    }
    
    func setupButtons() {
        
        NSLayoutConstraint.activate([
            heartWhiteButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            heartWhiteButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15),
            heartWhiteButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            heartRedButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            heartRedButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15),
            heartRedButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            productImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            productImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -100)
        ])
        
        NSLayoutConstraint.activate([
            originalProductLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: 10),
            originalProductLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            productNameLabel.topAnchor.constraint(equalTo: originalProductLabel.bottomAnchor, constant: 10),
            productNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            priceProductLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 10),
            priceProductLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20)
        ])
    }
}
