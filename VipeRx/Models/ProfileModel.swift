//
//  ProfileModel.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import Foundation

class ProfileModel {
    var photoUrl: String?
    var name: String?
    
    class func mockProfile() -> ProfileModel {
        let profile = ProfileModel()
        profile.photoUrl = "https://avatars1.githubusercontent.com/u/15903991?s=200&v=4"
        profile.name = "VipeRx"
        return profile
    }
}

