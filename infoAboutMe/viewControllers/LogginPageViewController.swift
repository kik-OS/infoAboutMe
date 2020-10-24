//
//  LogginPageViewController.swift
//  infoAboutMe
//
//  Created by Никита Гвоздиков on 23.10.2020.
//

import UIKit

class LogginPageViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var logginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logginTextField.delegate = self
    }
        
    
    
    
    @IBAction func forgotLogin() {
        
        showAlert(title: "Логин", message: "Ваш логин: \(IdentificationInfo.login)", typeOfAlert: .forgotLogin)
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Пароль", message: "Ваш пароль: \(IdentificationInfo.password)", typeOfAlert: .forgotPassword)
    }
    @IBAction func logInButton(_ sender: UIButton) {
        if logginTextField.text == IdentificationInfo.login && passwordTextField.text == IdentificationInfo.password {
//            logginTextField.text = ""
//            passwordTextField.text = ""
        } else {
            showAlert(title: "Внимание", message: "Вы ввели неправильный логин или пароль", typeOfAlert: .incorrectIdentInfo)
        }
    }
    
    
    // MARK: - ReturnKey
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        logginTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
           return true
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let helloUserVC = tabBarController.viewControllers?.first as! HelloUserViewController
        guard let textFromLogginField = logginTextField.text else {return}
        helloUserVC.welcomeMessage += textFromLogginField + "!"
       
    }
}



// MARK: - Alert Controller
extension LogginPageViewController {
    
    
    private func showAlert(title: String,
                           message: String,
                           typeOfAlert: TypeOfAlertMessage) {
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        
        switch typeOfAlert {
        
        case .forgotLogin:
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.logginTextField.text = ""
            }
            let addAction = UIAlertAction(title: "Вставить корректный логин", style: .default) { _ in
                self.logginTextField.text = IdentificationInfo.login
            }
            alert.addAction(okAction)
            alert.addAction(addAction)
        case .forgotPassword:
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTextField.text = ""
            }
            let addAction = UIAlertAction(title: "Вставить корректный пароль", style: .default) { _ in
                self.passwordTextField.text = IdentificationInfo.password
            }
            alert.addAction(okAction)
            alert.addAction(addAction)
        case .incorrectIdentInfo:
            let okAction = UIAlertAction(title: "OK", style: .default) {_ in
                self.passwordTextField.text = ""
            }
            alert.addAction(okAction)
            
        }
        present(alert, animated: true)
    }
    
}

