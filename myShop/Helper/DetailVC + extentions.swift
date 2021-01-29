//
//  DetailVC + extentions.swift
//  myShop
//
//  Created by Азат Киракосян on 20.01.2021.
//

import UIKit

extension DetailViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerArray.count
    }
}

extension DetailViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerArray[row]
    }
}
