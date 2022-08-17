//
//  UserViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 17.08.2022.
//

import UIKit

class UserViewController: UIViewController {


    @IBOutlet var labelAge: UILabel!
    @IBOutlet var labelNumber: UILabel!
    @IBOutlet var labelEmail: UILabel!
    @IBOutlet var labelInfo: UILabel!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelAge.text = "Возраст: \(person.age) лет"
        labelNumber.text = "Номер телефона: \(person.number)"
        labelEmail.text = "E-mail: \(person.email)"
        labelInfo.text = "Немного обо мне: \(person.aboutMe)"
        
        gradient()
      
    }
    
    private func gradient() {

        let colorOne = UIColor(red: 24 / 255,
                           green: 10 / 255,
                           blue: 200 / 255,
                           alpha: 1.0).cgColor
    let colorTwo = UIColor(red: 10 / 255,
                           green: 127 / 255,
                           blue: 96 / 255,
                           alpha: 1.0).cgColor

    let gradient = CAGradientLayer()
    gradient.frame = self.view.bounds
    gradient.colors = [colorOne, colorTwo]
    gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
    gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
    self.view.layer.insertSublayer(gradient, at: 0)
    }


}
