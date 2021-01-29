//
//  ProductData.swift
//  myShop
//
//  Created by Азат Киракосян on 14.01.2021.
//

import Foundation

struct ProductWomen {
    static var woomenCatalogBunners: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "кроссовки-3"), label: "Кроссовки")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "ботинки"), label: "Ботинки")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner3"), label: "Сумки")
        let banner4 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner4"), label: "Куртки")
        let banner5 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner5"), label: "Джинсы")
        let banner6 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner6") , label: "Головные уборы")
        let banner7 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner7"), label: "Украшения")
        let banner8 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner8"), label: "Рубашки")
        let banner9 = BunnerModel2(image: #imageLiteral(resourceName: "woomen-cat-bunner9"), label: "Пальто")
        let banner10 = BunnerModel2(image:#imageLiteral(resourceName: "woomen-cat-bunner2"), label: "Платья")
        
        return [banner1, banner2, banner3, banner4, banner5, banner6, banner7, banner8, banner9,banner10]
    }
    
    static var menCatalogBunners: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "кеды"), label: "Кеды")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "кроссовки-1"), label: "Кроссовки")
        let banner9 = BunnerModel2(image: #imageLiteral(resourceName: "ботинки 2") , label: "ботинки")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "куртки-1"), label: "Куртки")
        let banner4 = BunnerModel2(image: #imageLiteral(resourceName: "сумки-1"), label: "Сумки")
        let banner5 = BunnerModel2(image: #imageLiteral(resourceName: "рубашки-1"), label: "Рубашки")
        let banner6 = BunnerModel2(image: #imageLiteral(resourceName: "пальто-1"), label: "Пальто")
        let banner7 = BunnerModel2(image: #imageLiteral(resourceName: "джинсы-1"), label: "Джинсы")
        let banner8 = BunnerModel2(image: #imageLiteral(resourceName: "шапки") , label: "Головные уборы")
      
        return [banner1, banner2, banner3,banner9,banner4,banner5,banner6,banner7,banner8,]
    }
    
    static var kidsCatalogBunners: [BunnerModel2] {
        let banner1 = BunnerModel2(image: #imageLiteral(resourceName: "кеды-1"), label: "Кеды")
        let banner2 = BunnerModel2(image: #imageLiteral(resourceName: "куртки-2"), label: "Куртки")
        let banner3 = BunnerModel2(image: #imageLiteral(resourceName: "сумки-2"), label: "Сумки")
       
        return [banner1, banner2, banner3]
    }
    
    static var Womenproduct: [ProductModel] {
        let banner1 = ProductModel(image: #imageLiteral(resourceName: "kross-prod5"), original: "Original", name: "ADIDAS", price: "8490 pублей")
        let banner2 = ProductModel(image: #imageLiteral(resourceName: "kross-prod2"), original: "Original" , name: "NIKE", price: "6790 pублей")
        let banner3 = ProductModel(image: #imageLiteral(resourceName: "kross-prod1"), original: "Original", name: "ASICS", price: "11200 pублей")
        let banner4 = ProductModel(image: #imageLiteral(resourceName: "kross-prod3"), original: "Original", name: "PUMA", price: "5800 pублей")
        let banner5 = ProductModel(image: #imageLiteral(resourceName: "kross-prod3"), original: "Original", name: "REEBOK", price: "7600 pублей")
       
        return [banner1, banner2, banner3,banner4,banner5]
    }
    
    static var Womenproduct2: [ProductModel] {
        let banner1 = ProductModel(image: #imageLiteral(resourceName: "boots-prod2"), original: "Original", name: "Зимняя колекция", price: "4990 pублей")
        let banner2 = ProductModel(image: #imageLiteral(resourceName: "ботинки-2"), original: "Original", name: "Весенняя колекция", price: "6490 pублей")
        let banner3 = ProductModel(image: #imageLiteral(resourceName: "boots-prod3"), original: "Original", name: "Зимняя колекция", price: "6780 pублей")
        let banner4 = ProductModel(image: #imageLiteral(resourceName: "батинки"), original: "Original", name: "Зимняя колекция", price: "6780 pублей")
        let banner5 = ProductModel(image: #imageLiteral(resourceName: "боты"), original: "Original", name: "Весенняя колекция", price: "6780 pублей")
        let banner6 = ProductModel(image: #imageLiteral(resourceName: "ботинки-4"), original: "Original", name: "Весенняя колекция", price: "6780 pублей")
       
        return [banner1, banner2, banner3,banner4,banner5,banner6]
    }
}

struct ProductMan {
    static var ManCatalogBunners: [ProductModel] {
        let banner1 = ProductModel(image: #imageLiteral(resourceName: "2-1"), original: "Original", name: "Зимняя колекция", price: "4990 pублей")
        let banner2 = ProductModel(image: #imageLiteral(resourceName: "1-1"), original: "Original", name: "Весенняя колекция", price: "6490 pублей")
        let banner3 = ProductModel(image: #imageLiteral(resourceName: "1-1"), original: "Original", name: "Зимняя колекция", price: "6780 pублей")
        let banner4 = ProductModel(image: #imageLiteral(resourceName: "4-1"), original: "Original", name: "Зимняя колекция", price: "6780 pублей")
        let banner5 = ProductModel(image: #imageLiteral(resourceName: "7"), original: "Original", name: "Весенняя колекция", price: "6780 pублей")
        let banner6 = ProductModel(image: #imageLiteral(resourceName: "5"), original: "Original", name: "Весенняя колекция", price: "6780 pублей")
       
        
        return [banner1, banner2, banner3, banner4, banner5, banner6]
    }
   
}

    

