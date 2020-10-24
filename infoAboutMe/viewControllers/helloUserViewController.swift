//
//  HelloUserViewController.swift
//  infoAboutMe
//
//  Created by Никита Гвоздиков on 23.10.2020.
//

import UIKit

class HelloUserViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeMessage = "Добро Пожаловать, "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
    }
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
