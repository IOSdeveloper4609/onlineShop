//
//  CustomTableViewCell.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    private var avatarImageView = UIImageView()
    private let titleLabel = UILabel()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupWithModel(model: BunnerModel2) {
        avatarImageView.image = model.image
        titleLabel.text = model.label
    }
}


extension CustomTableViewCell {
    
    private func setupViews() {
        addViews()
        setupAutoresizingMask()
        setupLayout()
        setupImageView()
        setupLabels()
    }
    
    func setupLabels() {
        titleLabel.textAlignment = .center
        titleLabel.font = titleLabel.font.withSize(25)
        titleLabel.numberOfLines = 2
    }
    
    func setupImageView() {
        avatarImageView.layer.cornerRadius = 20
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.masksToBounds = true
        avatarImageView.contentMode = .scaleAspectFill
    }
    
    private func addViews() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(titleLabel)
        
    }
    
    private func setupAutoresizingMask() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
       
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            avatarImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            avatarImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            avatarImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -100)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 25),
            titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50),
            titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50)
        ])
    }
}


