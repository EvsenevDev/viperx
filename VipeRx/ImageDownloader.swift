//
//  ImageDownloader.swift
//  VipeRx
//
//  Created by b.evsenev on 03/07/2018.
//  Copyright © 2018 BED. All rights reserved.
//

import Foundation
import UIKit

typealias ImageResult = (UIImage?) -> Void
fileprivate let backgroundQueueName = "background.queue"

class ImageDownloader {
    class func imageBy(urlString: String, result: @escaping ImageResult) {
        if let url = URL(string: urlString) {
            DispatchQueue(label: backgroundQueueName).async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        result(UIImage(data: data))
                    }
                }
            }
        }
    }
}
