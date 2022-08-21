//
//  UserViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 17.08.2022.
//

import UIKit

class UserViewController: UIViewController {

    // MARK: - properties
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var photoImage: UIImageView!
    
    var userOne: User!
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = userOne.person.fullName
        
        professionLabel.text = userOne.person.profession
        numberLabel.text = userOne.person.number
        emailLabel.text = userOne.person.email
        ageLabel.text = userOne.person.age
        
        nameLabel.layer.masksToBounds = true
        numberLabel.layer.masksToBounds = true
        emailLabel.layer.masksToBounds = true
        ageLabel.layer.masksToBounds = true
        
        photoImage.image = UIImage(named: userOne.photo.photoOne)
        
        gradient()
      
    }
    // MARK: - function
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.userOne = userOne
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
