//
//  InfoViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 17.08.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
