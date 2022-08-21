//
//  InfoViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 17.08.2022.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - properties
    
    @IBOutlet var dogLabel: UILabel!
    @IBOutlet var vocalLabel: UILabel!
    @IBOutlet var drumsLabel: UILabel!
    @IBOutlet var horseLabel: UILabel!
    
    @IBOutlet var dodImageOne: UIImageView!
    @IBOutlet var dogImageTwo: UIImageView!
    @IBOutlet var vocalImage: UIImageView!
    @IBOutlet var drumsImage: UIImageView!
    @IBOutlet var horseImageOne: UIImageView!
    @IBOutlet var horseImageTwo: UIImageView!
    
    var userOne: User!
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogLabel.text = userOne.person.factFour
        vocalLabel.text = userOne.person.factTwo
        drumsLabel.text = userOne.person.factOne
        horseLabel.text = userOne.person.factThree
        
        dodImageOne.image = UIImage(named: userOne.photo.photoTwo)
        dogImageTwo.image = UIImage(named: userOne.photo.photoThree)
        vocalImage.image = UIImage(named: userOne.photo.photoFive)
        drumsImage.image = UIImage(named: userOne.photo.photoSix)
        horseImageOne.image = UIImage(named: userOne.photo.photoFour)
        horseImageTwo.image = UIImage(named: userOne.photo.photoSeven)
        
    
        gradient()
    }
    
    // MARK: - gradient
    
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
