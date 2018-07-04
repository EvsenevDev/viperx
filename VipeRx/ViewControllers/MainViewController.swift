//
//  MainViewController.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onProfileTap() {
        performSegue(withIdentifier: "profile", sender: nil)
    }
    
    @IBAction func onSettingsTap() {
        performSegue(withIdentifier: "settings", sender: nil)
    }
}

