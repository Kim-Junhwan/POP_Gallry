//
//  UIImageView+Extension.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/10.
//

import Foundation
import UIKit

extension UIImageView {
    func load(url: String) {
        NetworkManager.shared.fetchImage(url: url) { image in
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
