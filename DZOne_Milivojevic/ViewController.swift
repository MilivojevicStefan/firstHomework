//
//  ViewController.swift
//  DZOne_Milivojevic
//
//  Created by Стефан  Миливоевич on 27.3.24..
//

import UIKit

class ViewController: UIViewController {

    let blackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let redColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
    
    let btn = UIButton()
    let secondBtn = UIButton()
    
    lazy var flowLabel = createLabel(text: "Номер потока:", color: blackColor, frame: CGRect(x:20, y: 250, width: 118, height: 16))
    
    lazy var surnameLabel = createLabel(text: "Фамилия:", color: blackColor, frame: CGRect(x:20, y: 230, width: 78, height: 16))
    
    lazy var nameLabel = createLabel(text: "Имя:", color: blackColor, frame: CGRect(x:20, y: 210, width: 39, height: 16))
    
    lazy var flow = createLabel(text: "iOS 6", color: redColor, frame: CGRect(x: 142, y: 250, width: 100, height: 16))
    
    lazy var surname = createLabel(text: "Surname", color: redColor, frame: CGRect(x: 102, y: 230, width: 100, height: 16))

    lazy var name = createLabel(text: "Name", color: redColor, frame: CGRect(x: 63, y: 210, width: 100, height: 16))
    
    
    
    private lazy var btnAction = UIAction { action in
        guard let sender = action.sender as? UIButton else {
            return
        }
        
        switch sender.tag {
        case 1:
            self.name.text = "Stefan"
            self.surname.text = "Milivojevic"
            self.flow.text = "7 Поток"
        case 2:
            self.name.text = "Name"
            self.surname.text = "Surname"
            self.flow.text = "iOS 6"
        default:
            self.name.text = "Error"
            self.surname.text = "Error"
            self.flow.text = "Error"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondBtn.setTitle("Очистить данные", for: .normal)
        secondBtn.backgroundColor = .none
        secondBtn.setTitleColor(.blue, for: .normal)
        secondBtn.frame = CGRect(x: 20, y: 770, width: 350, height: 30)
        secondBtn.tag = 2
        secondBtn.addAction(btnAction, for: .touchUpInside)
        
        btn.setTitle("Добавить данные", for: .normal)
        btn.backgroundColor = blackColor
        btn.frame = CGRect(x: 20, y: 700, width: 350, height: 50)
        btn.layer.cornerRadius = 20
        btn.tag = 1
        btn.addAction(btnAction, for: .touchUpInside)
        
        
        view.addSubview(secondBtn)
        view.addSubview(btn)
        view.addSubview(flowLabel)
        view.addSubview(surnameLabel)
        view.addSubview(nameLabel)
        view.addSubview(flow)
        view.addSubview(surname)
        view.addSubview(name)
        
    }
    
    func createLabel(text: String, color: UIColor, frame: CGRect) -> UILabel {
        let label = UILabel()
        
        label.text = text
        label.textColor = color
        label.font = .boldSystemFont(ofSize: 16)
        label.frame = frame
        
        return label
    }


}

