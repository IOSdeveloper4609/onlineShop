//
//  CatalogVC + extentions.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import UIKit


extension CatalogViewController:  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return catalogBunnersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath) as! CatalogCell
        
        cell.setupWithModel(model: catalogBunnersArray[indexPath.row])
        cell.selectionStyle = .none

        return cell
    }
}
