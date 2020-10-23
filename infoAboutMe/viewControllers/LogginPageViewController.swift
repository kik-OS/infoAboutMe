//
//  LogginPageViewController.swift
//  infoAboutMe
//
//  Created by Никита Гвоздиков on 23.10.2020.
//

import UIKit

class LogginPageViewController: UIViewController {

    @IBOutlet var logginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func forgotLogin() {
       
        showAlert(title: "Логин", message: "Ваш логин: \(IdentificationInfo.login)", typeOfAlert: .forgotLogin)
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Пароль", message: "Ваш пароль: \(IdentificationInfo.password)", typeOfAlert: .forgotPassword)
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
            let okAction = UIAlertAction(title: "OK", style: .default)
            let addAction = UIAlertAction(title: "Вставить корректный логин", style: .default) { _ in
                self.logginTextField.text = IdentificationInfo.login
            }
            alert.addAction(okAction)
            alert.addAction(addAction)
        case .forgotPassword:
            let okAction = UIAlertAction(title: "OK", style: .default)
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

