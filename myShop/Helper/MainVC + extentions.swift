//
//  VC + extentions.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit

extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bunnersCollectionViewArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IdentifierColections, for: indexPath) as!
            CustomCollectionViewCell
        cell.setupWithModel(model: bunnersCollectionViewArray[indexPath.row])
        //cell.backgroundColor = .black
        cell.isUserInteractionEnabled = false
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegate { }


extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height - 10
        let width = collectionView.frame.width - 98
        return CGSize(width: width, height: height)
    }
    
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bunnersTableViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierTable, for: indexPath) as! CustomTableViewCell
        
        cell.setupWithModel(model: bunnersTableViewArray[indexPath.row])
        cell.isUserInteractionEnabled = false
        cell.layer.cornerRadius = 15
        cell.clipsToBounds = true
        cell.layer.masksToBounds = true
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate { }


