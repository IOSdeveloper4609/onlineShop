//
//  ImageData.swift
//  myShop
//
//  Created by Азат Киракосян on 12.01.2021.
//

import Foundation


struct Bunners {
    static var woomenBunnersCollectionView: [BunnerModel] {
        let banner1 = BunnerModel(image: #imageLiteral(resourceName: "2") )
        let banner2 = BunnerModel(image: #imageLiteral(resourceName: "шляпа"))
        let banner3 = BunnerModel(image: #imageLiteral(resourceName: "очки"))
        let banner4 = BunnerModel(image: #imageLiteral(resourceName: "1"))
        let banner5 = BunnerModel(image: #imageLiteral(resourceName: "очки 2"))
        let banner6 = BunnerModel(image: #imageLiteral(resourceName: "пальто"))
        
        return [banner1, banner2, banner3, banner4, banner5,banner6]
    }
    static var manBunnersCollectionView: [BunnerModel] {
       let banner1 = BunnerModel(image:  #imageLiteral(resourceName: "педжак"))
       let banner2 = BunnerModel(image: #imageLiteral(resourceName: "очки м"))
       let banner3 = BunnerModel(image: #imageLiteral(resourceName: "кепки"))
       let banner4 = BunnerModel(image: #imageLiteral(resourceName: "футболка"))
       let banner5 = BunnerModel(image: #imageLiteral(resourceName: "шляпа м."))
       let banner6 = BunnerModel(image: #imageLiteral(resourceName: "футболки"))

       return [banner1, banner2, banner3, banner4, banner5,banner6]
   }
    static var kidsBunnersCollectionView: [BunnerModel] {
        let banner1 = BunnerModel(image: #imageLiteral(resourceName: "девочки") )
        let banner2 = BunnerModel(image: #imageLiteral(resourceName: "дети"))
        let banner3 = BunnerModel(image: #imageLiteral(resourceName: "малыши"))
        let banner4 = BunnerModel(image: #imageLiteral(resourceName: "мальчик"))
        let banner5 = BunnerModel(image: #imageLiteral(resourceName: "куртки "))
        
        return [banner1, banner2, banner3, banner4, banner5]
    }
}
    
struct Bunners2 {
    static var woomenBunnersTableView: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "сумки"), label: "-30% на все сумки до конца дня")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "духи"), label: "Найди свой аромат")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "шляпы"), label: "Шляпы от ведущих брендов")
        
        return [banner1, banner2, banner3]
    }
    
    static var  manBunnersTableView: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "очки-1"), label: "Большой выбор солнцезащитных очков")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "бесболки"), label: "Кепки и бесболки от ведущих брендов")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "рубашки"), label: "Классика денима: джинсы и рубашки")
        
        return [banner1, banner2, banner3]
    }
    
    static var kidsBunnersTableView: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "kids-bunner-table1"), label: "Большой выбор одежды 0+")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "для школы"), label: "Классические образы для школы")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "бемби"), label: "Распродажа одежды и обуви Bembi")
        
        return [banner1, banner2, banner3]
    }
}
    

    


