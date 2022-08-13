//
//  VideoView.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/13.
//

import Foundation
import UIKit
import AVFoundation

final class VideoView: UIView {
    private var url: String?
    private var player = AVPlayer()
    private var playerLayer: AVPlayerLayer?
    
    private lazy var videoBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        return view
      }()
    
    init(url: String){
        self.url = url
           super.init(frame: .zero)
           
           NSLayoutConstraint.activate([
             self.videoBackgroundView.leftAnchor.constraint(equalTo: self.leftAnchor),
             self.videoBackgroundView.rightAnchor.constraint(equalTo: self.rightAnchor),
             self.videoBackgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
             self.videoBackgroundView.topAnchor.constraint(equalTo: self.topAnchor),
           ])
         
           guard let url = URL(string: url) else { return }
           let item = AVPlayerItem(url: url)
           self.player.replaceCurrentItem(with: item)
           let playerLayer = AVPlayerLayer(player: self.player)
           playerLayer.frame = self.videoBackgroundView.bounds
           playerLayer.videoGravity = .resizeAspectFill
           self.playerLayer = playerLayer
           self.videoBackgroundView.layer.addSublayer(playerLayer)
           self.player.play()
        
//        super.init(frame: .zero)
//        NSLayoutConstraint.activate([
//            self.videoBackgroundView.leftAnchor.constraint(equalTo: self.leftAnchor),
//            self.videoBackgroundView.rightAnchor.constraint(equalTo: self.rightAnchor),
//            self.videoBackgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
//            self.videoBackgroundView.topAnchor.constraint(equalTo: self.topAnchor),
//        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.playerLayer?.frame = self.videoBackgroundView.bounds
    }
}

extension VideoView {
    func load(url: String) {
        self.url = url
        guard let url = URL(string: self.url ?? "") else { return }
        let item = AVPlayerItem(url: url)
        self.player.replaceCurrentItem(with: item)
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = self.videoBackgroundView.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.playerLayer = playerLayer
        self.videoBackgroundView.layer.addSublayer(playerLayer)
        self.player.play()
    }
}
