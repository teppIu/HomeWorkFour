//
//  GreetingViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 12.08.2022.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    // MARK: - properties
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var userName = ""
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        greetingLabel.text = "Hello, \(userName)"
       
        gradient()
       
    }
    
    // MARK: - function
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        
        navigationVC.title = userName


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
