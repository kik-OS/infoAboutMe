//
//  AboutPersonViewController.swift
//  infoAboutMe
//
//  Created by Никита Гвоздиков on 23.10.2020.
//

import UIKit

class AboutPersonViewController: UIViewController {

    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var avatarLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarLabel.text = IdentificationInfo.name
        avatarImage.layer.borderWidth = 2
        avatarImage.layer.borderColor = UIColor.systemBlue.cgColor
    }
}
