//
//  MediaContainer.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation
import UIKit

protocol MediaContainer {
    var content: Content? { get set }
    var media: UIImageView! { get set}
    var note: UILabel! { get set }
    
    func contentUpdate()
}

extension MediaContainer {
    
    func contentUpdate() {
        if let content = content {
            media.load(url: content.url)
            note.text = content.description
        }
    }
}
