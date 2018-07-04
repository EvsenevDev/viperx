//
//  UserSettings.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import Foundation

fileprivate let LOCATION_KEY = "settings_location"
fileprivate let NOTIFICATIONS_KEY = "settings_notfication"
fileprivate let SOUND_KEY = "settings_sound"

class UserSettings {
    
    func locationEnabled() -> Bool {
        return UserDefaults.standard.bool(forKey: LOCATION_KEY)
    }
    
    func notificationsEnabled() -> Bool {
        return UserDefaults.standard.bool(forKey: NOTIFICATIONS_KEY)
    }
    
    func soundEnabled() -> Bool {
        return UserDefaults.standard.bool(forKey: SOUND_KEY)
    }
    
    
    func saveLacation(enabled: Bool) {
        UserDefaults.standard.set(enabled, forKey: LOCATION_KEY)
    }
    
    func saveNotifications(enabled: Bool) {
        UserDefaults.standard.set(enabled, forKey: NOTIFICATIONS_KEY)
    }
    
    func saveSound(enabled: Bool) {
        UserDefaults.standard.set(enabled, forKey: SOUND_KEY)
    }
}
