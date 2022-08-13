//
//  ViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 12.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorOne = UIColor(red: 115 / 255,
                               green: 56 / 255,
                               blue: 74 / 255,
                               alpha: 1.0).cgColor
        let colorTwo = UIColor(red: 24 / 255,
                               green: 10 / 255,
                               blue: 200 / 255,
                               alpha: 1.0).cgColor
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [colorOne, colorTwo]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradient, at: 0)
    }
   
    
    @IBAction func loginInButton(_ sender: UIButton) {
        if loginTF.text != "Sam" {
            showAlert(with: "Invalid login", and: "Please, enter correct login")
        } else if passwordTF.text != "123"{
            showAlert(with: "Invalid password", and: "Please, enter correct password")
        }
        return
    }
    
    @IBAction func foggotLoginButton() {
        showAlert(with: "Oops!", and: "Your name is Sam")
    }
    @IBAction func foggotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is 123")
        
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        loginTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? GreetingViewController else { return }
        destination.userName = loginTF.text
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alertOne = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alertOne.addAction(okAction)
        present(alertOne, animated: true)
    }
    
    private func showAlertData(with title: String, and massage: String) {
        let alertLogin = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertLogin.addAction(okAction)
        present(alertLogin, animated: true)
    }
}
