//
//  MediaContainer.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation
import UIKit
import AVFoundation

protocol MediaContainer {
    var content: Content? { get set }
    var media: UIView { get }
    var note: UILabel { get }
    
    var videoView: VideoView { get }
    var mediaImageView: UIImageView { get }
    
    func contentUpdate()
}

extension MediaContainer {
     var media: UIView {
         guard let content = content else { return UIImageView() }
        switch content.type {
        case .video:
            return videoView
        case .image:
            return mediaImageView
        }
    }
    
    func contentUpdate() {
        if let content = content {
            switch content.type {
            case .video:
                videoView.load(url: content.url)
            case .image:
                mediaImageView.load(url: content.url)
            }
            self.note.text = content.description
        }
    }
}
