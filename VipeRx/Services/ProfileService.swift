//
//  ProfileService.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import Foundation

typealias ProfileCompletion = (ProfileModel) -> Void

class ProfileService {
    
    func getProfile(completion: @escaping ProfileCompletion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            completion(ProfileModel.mockProfile())
        }
    }
    
}
