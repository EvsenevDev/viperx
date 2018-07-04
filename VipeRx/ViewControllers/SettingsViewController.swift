//
//  SettingsViewController.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var notificationsSwitch: UISwitch!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    let userSettings = UserSettings()
    
    private let profileService = ProfileService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationsSwitch.isOn = userSettings.notificationsEnabled()
        locationSwitch.isOn = userSettings.locationEnabled()
        soundSwitch.isOn = userSettings.soundEnabled()
    }
    
    @IBAction func onSwitchNotifications(switcher: UISwitch) {
        userSettings.saveNotifications(enabled: switcher.isOn)
    }
    
    @IBAction func onSwitchLocation(switcher: UISwitch) {
        userSettings.saveLacation(enabled: switcher.isOn)
    }
    
    @IBAction func onSwitchSound(switcher: UISwitch) {
        userSettings.saveSound(enabled: switcher.isOn)
    }
    
    
    
    
    
    
    
}
