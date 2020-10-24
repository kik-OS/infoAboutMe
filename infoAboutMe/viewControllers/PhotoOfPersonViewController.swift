//
//  PhotoOfPersonViewController.swift
//  infoAboutMe
//
//  Created by Никита Гвоздиков on 23.10.2020.
//

import UIKit

class PhotoOfPersonViewController: UIViewController {
    @IBOutlet var lightOnTesla: UIImageView!
    @IBOutlet var lightOffTesla: UIImageView!
    
    @IBOutlet var lightOnTeslaLabel: UILabel!
    @IBOutlet var lightArondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightOnTesla.alpha = 0
    }
    
    @IBAction func lightOnOff(_ sender: UISwitch) {
        if sender.isOn {
            lightOnTesla.alpha = 1
        } else {
            lightOnTesla.alpha = 0
        }
    }
    
    @IBAction func darkLightOnOff(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
            lightOnTeslaLabel.textColor = .black
            lightArondLabel.textColor = .black
            
        } else {
            view.backgroundColor = .black
            lightOnTeslaLabel.textColor = .white
            lightArondLabel.textColor = .white
        }
    }
}
