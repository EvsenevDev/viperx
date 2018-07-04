//
//  ProfileViewController.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    private let profileService = ProfileService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func showProfile(_ profile: ProfileModel) {
        nameLabel.text = profile.name
        if let url = profile.photoUrl {
            ImageDownloader.imageBy(urlString: url, result: { [weak self] img in
                self?.photoView.image = img
            })
        }
    }
    
    //MARK: Actions
    
    @IBAction func onLoadProfileTap() {
        loadingIndicator.startAnimating()
        
        profileService.getProfile { [weak self] profile in
            self?.showProfile(profile)
            self?.loadingIndicator.stopAnimating()
        }
    }
    
}
