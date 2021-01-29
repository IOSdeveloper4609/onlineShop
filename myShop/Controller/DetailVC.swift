//
//  DetailViewController.swift
//  myShop
//
//  Created by Азат Киракосян on 20.01.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    let mySkrollView = UIScrollView(frame: .zero)
    let nameTF = UITextField()
    let lastNameTF = UITextField()
    let cityTF = UITextField()
    let numberTF = UITextField()
    let nameProductlabel = UILabel()
    let priceProductLabel = UILabel()
    let productImage = UIImageView()
    let orderButton = UIButton()
    let sizeProductLabel = UILabel()
    let blackProductLabel = UILabel()
    var segmentcontroll = UISegmentedControl()
    let productArray = [ "36", "37", "38","39","40","41","42","43","44"]
    let picker = UIPickerView()
    let pickerArray = ["черный","красный","голубой","оранжевый","зеленый","белый","фиолетовый","синий"]
    let productModel: ProductModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupMyScrollView()
        setupNavController()
        setupNameProductlabel()
        setupProductImage()
        setupPriceProductLabel()
        setupSizeProductLabel()
        setupSegmentedcontrol()
        setupBlackProductLabel()
        setupPicker()
        setupNameTF()
        setupLastNameTF()
        setupCityTF()
        setupNumberTF()
        setupOrderButton()
        setupKeyBoard()
        hidingKeyboard()
        
    }
    
    func hidingKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.dismisKeybord))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismisKeybord() {
       view.endEditing(true)
        print("на меня нажали")
    }
    
    func setupKeyBoard() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in

            self.view.frame.origin.y = -170.0
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in

            self.view.frame.origin.y = 0.0
        }
    }
    
    func setupNumberTF() {
        numberTF.translatesAutoresizingMaskIntoConstraints = false
        numberTF.borderStyle = .roundedRect
        numberTF.clearButtonMode = .always
        numberTF.placeholder = "Номер телефона"
        numberTF.textAlignment = .center
        mySkrollView.addSubview(numberTF)
        
        NSLayoutConstraint.activate([
            numberTF.topAnchor.constraint(equalTo: cityTF.bottomAnchor, constant: 30),
            numberTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            numberTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
        ])
    }
    
    func setupCityTF() {
        cityTF.translatesAutoresizingMaskIntoConstraints = false
        cityTF.borderStyle = .roundedRect
        cityTF.clearButtonMode = .always
        cityTF.placeholder = "Введите город"
        cityTF.textAlignment = .center
        mySkrollView.addSubview(cityTF)
        
        NSLayoutConstraint.activate([
            cityTF.topAnchor.constraint(equalTo: lastNameTF.bottomAnchor, constant: 30),
            cityTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            cityTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
        ])
    }
    
    func setupLastNameTF() {
        lastNameTF.translatesAutoresizingMaskIntoConstraints = false
        lastNameTF.borderStyle = .roundedRect
        lastNameTF.clearButtonMode = .always
        lastNameTF.placeholder = "Введите фамилию"
        lastNameTF.textAlignment = .center
        mySkrollView.addSubview(lastNameTF)
        
        NSLayoutConstraint.activate([
            lastNameTF.topAnchor.constraint(equalTo: nameTF.bottomAnchor, constant: 30),
            lastNameTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            lastNameTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
        ])
    }
    
    
    func setupNameTF() {
        nameTF.translatesAutoresizingMaskIntoConstraints = false
        nameTF.borderStyle = .roundedRect
        nameTF.clearButtonMode = .always
        nameTF.placeholder = "Введите имя"
        nameTF.textAlignment = .center
        mySkrollView.addSubview(nameTF)
        
        NSLayoutConstraint.activate([
            nameTF.topAnchor.constraint(equalTo: picker.bottomAnchor, constant: 40),
            nameTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            nameTF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
        ])
    }
    
    func setupMyScrollView() {
        mySkrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 1.7)
        mySkrollView.frame = view.bounds
        mySkrollView.keyboardDismissMode = .onDrag
        mySkrollView.autoresizingMask = .flexibleHeight
        mySkrollView.showsHorizontalScrollIndicator = true
        mySkrollView.bounces = true
        view.addSubview(mySkrollView)
    }
    
    init(productModel: ProductModel) {
        self.productModel = productModel
        
        super.init(nibName: nil, bundle: nil)
        priceProductLabel.text = productModel.price
        productImage.image = productModel.image
        nameProductlabel.text = productModel.name
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupNavController() {
        navigationItem.title = "Оформление заказа"
    }
    
    func setupPriceProductLabel() {
        priceProductLabel.translatesAutoresizingMaskIntoConstraints = false
        priceProductLabel.font = sizeProductLabel.font.withSize(20)
        priceProductLabel.textColor = .black
        mySkrollView.addSubview(priceProductLabel)

        NSLayoutConstraint.activate([
            priceProductLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 47),
            priceProductLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
        ])
    }

    func setupNameProductlabel() {
        nameProductlabel.translatesAutoresizingMaskIntoConstraints = false
        nameProductlabel.font = nameProductlabel.font.withSize(25)
        mySkrollView.addSubview(nameProductlabel)

        NSLayoutConstraint.activate([
            nameProductlabel.topAnchor.constraint(equalTo: mySkrollView.topAnchor, constant: 25),
            nameProductlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    func setupProductImage() {
        productImage.contentMode  = .scaleAspectFit
        productImage.translatesAutoresizingMaskIntoConstraints = false
        mySkrollView.addSubview(productImage)
        
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: nameProductlabel.bottomAnchor, constant: 10),
            productImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            productImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            productImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            productImage.heightAnchor.constraint(equalToConstant: 320)
        ])
    }

    func setupSizeProductLabel() {

        sizeProductLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeProductLabel.font = sizeProductLabel.font.withSize(17)
        sizeProductLabel.text = "Выберите свой размер"
        sizeProductLabel.textColor = .black
        sizeProductLabel.alpha = 0.3
        mySkrollView.addSubview(sizeProductLabel)

        NSLayoutConstraint.activate([
            sizeProductLabel.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 50),
            sizeProductLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
        ])
    }

    func setupSegmentedcontrol() {
        segmentcontroll  = UISegmentedControl(items: self.productArray)
        segmentcontroll.translatesAutoresizingMaskIntoConstraints = false
        mySkrollView.addSubview(segmentcontroll)
        segmentcontroll.addTarget(nil, action: #selector(setupSegmentControl), for: .valueChanged)

        NSLayoutConstraint.activate([
            segmentcontroll.topAnchor.constraint(equalTo: sizeProductLabel.bottomAnchor, constant: 30),
            segmentcontroll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            segmentcontroll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ])
    }

    @objc func setupSegmentControl() {
        switch segmentcontroll.selectedSegmentIndex {
        case 1:
            alert()
        case 4:
            alert()
        case 6:
            alert()
        default:
            break
        }
    }

    func setupBlackProductLabel() {
        blackProductLabel.translatesAutoresizingMaskIntoConstraints = false
        blackProductLabel.font = blackProductLabel.font.withSize(17)
        blackProductLabel.text = "Цвета в наличии"
        blackProductLabel.textColor = .black
        blackProductLabel.alpha = 0.3
        mySkrollView.addSubview(blackProductLabel)

        NSLayoutConstraint.activate([
            blackProductLabel.topAnchor.constraint(equalTo: segmentcontroll.bottomAnchor, constant: 30),
            blackProductLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
        ])
    }

    func setupPicker() {
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.dataSource = self
        picker.delegate = self
        mySkrollView.addSubview(picker)

        NSLayoutConstraint.activate([
            picker.topAnchor.constraint(equalTo: segmentcontroll.bottomAnchor,constant: 34),
            picker.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            picker.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
        ])
    }

    func setupOrderButton() {
        orderButton.translatesAutoresizingMaskIntoConstraints = false
        orderButton.tintColor = .white
        orderButton.backgroundColor = .systemBlue
        orderButton.setTitle("Оформить заказ", for: .normal)
        orderButton.layer.cornerRadius = 20
        orderButton.clipsToBounds = true
        mySkrollView.addSubview(orderButton)
        orderButton.addTarget(self, action: #selector(actionOrderButton), for: .touchUpInside)

        NSLayoutConstraint.activate([
            orderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orderButton.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 50),
            orderButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 85),
            orderButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -85),
            orderButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    @objc func actionOrderButton() {
        
        if nameTF.text?.isEmpty == true || lastNameTF.text?.isEmpty == true || cityTF.text?.isEmpty == true || numberTF.text?.isEmpty == true {
            errorAlert()
        } else {
            orderAlert()
        }
    }
}





 
