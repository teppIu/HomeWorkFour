//
//  ViewController.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 12.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIView!
    
    private let userOne = User.getUser()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        gradientView()
    }
   
    
    @IBAction func loginInButton(_ sender: UIButton) {
        guard loginTF.text == userOne.user, passwordTF.text == userOne.password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login or password")
        return
        }
    }
    
    @IBAction func foggotLoginButton() {
        showAlert(with: "Oops!", and: "Your name is \(userOne.user)")
    }
    @IBAction func foggotPasswordButton() {
        showAlert(with: "Oops!", and: "Your password is \(userOne.password)")
        
       
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.userName = userOne.user
            } else if let userVC = viewController as? UserViewController {
                userVC.title = userOne.user
            }
    }
    }
        
    private func gradientView() {
        let colorOne = UIColor(red: 10 / 255,
                               green: 127 / 255,
                               blue: 96 / 255,
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
}
extension LoginViewController {
private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
