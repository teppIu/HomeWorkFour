//
//  GreetingViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 12.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    var userName: String?
    
    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = self.userName else { return }
        greetingLabel.text = "Hello, \(userName)"
        
        let colorOne = UIColor(red: 24 / 255,
                               green: 10 / 255,
                               blue: 200 / 255,
                               alpha: 1.0).cgColor
        let colorTwo = UIColor(red: 115 / 255,
                               green: 56 / 255,
                               blue: 74 / 255,
                               alpha: 1.0).cgColor
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [colorOne, colorTwo]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    
}
