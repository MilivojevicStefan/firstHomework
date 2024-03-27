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
    let nameLabel = UILabel()
    let surnameLabel = UILabel()
    let flowLabel = UILabel()
    let name = UILabel()
    let surname = UILabel()
    let flow = UILabel()
    
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
        
        flowLabel.text = "Номер потока:"
        flowLabel.textColor = blackColor
        flowLabel.font = .boldSystemFont(ofSize: 16)
        flowLabel.frame = CGRect(x:20, y: 250, width: 118, height: 16)
        
        surnameLabel.text = "Фамилия:"
        surnameLabel.textColor = blackColor
        surnameLabel.font = .boldSystemFont(ofSize: 16)
        surnameLabel.frame = CGRect(x:20, y: 230, width: 78, height: 16)
        
        nameLabel.text = "Имя:"
        nameLabel.textColor = blackColor
        nameLabel.font = .boldSystemFont(ofSize: 16)
        nameLabel.frame = CGRect(x:20, y: 210, width: 39, height: 16)
        
        flow.text = "iOS 6"
        flow.textColor = redColor
        flow.font = .boldSystemFont(ofSize: 16)
        flow.frame = CGRect(x: 142, y: 250, width: 100, height: 16)
        
        surname.text = "Surname"
        surname.textColor = redColor
        surname.font = .boldSystemFont(ofSize: 16)
        surname.frame = CGRect(x: 102, y: 230, width: 100, height: 16)
        
        name.text = "Name"
        name.textColor = redColor
        name.font = .boldSystemFont(ofSize: 16)
        name.frame = CGRect(x: 63, y: 210, width: 100, height: 16)
        
        view.addSubview(secondBtn)
        view.addSubview(btn)
        view.addSubview(flowLabel)
        view.addSubview(surnameLabel)
        view.addSubview(nameLabel)
        view.addSubview(flow)
        view.addSubview(surname)
        view.addSubview(name)
        
    }


}

