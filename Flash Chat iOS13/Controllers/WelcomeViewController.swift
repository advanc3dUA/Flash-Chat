//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //animateLogo()
        titleLabel.text = K.appName
    }
    
    fileprivate func animateLogo() {
        titleLabel.text = ""
        let appName = K.appName
        var charNumber = 0.0
        for letter in appName {
            Timer.scheduledTimer(withTimeInterval: 0.12 * charNumber, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charNumber += 1
        }
    }
}
