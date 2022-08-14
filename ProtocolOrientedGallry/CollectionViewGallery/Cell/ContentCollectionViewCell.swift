//
//  ContentCollectionViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell ,MediaContainer {
    var content: Content? {
        didSet{
            contentUpdate()
            addView()
            autoLayout()
        }
    }
    
    lazy var note: UILabel = {
        let note = UILabel()
        note.translatesAutoresizingMaskIntoConstraints = false
        return note
    }()
    
    lazy var videoView: VideoView = {
        let videoView = VideoView()
        videoView.translatesAutoresizingMaskIntoConstraints = false
        return videoView
    }()
    
    lazy var mediaImageView: UIImageView = {
        let mediaImageView = UIImageView()
        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
        return mediaImageView
    }()
    
    static let identifier = "ContentCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        contentView.addSubview(media)
        contentView.addSubview(note)
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            media.widthAnchor.constraint(equalToConstant: 100),
            media.heightAnchor.constraint(equalTo: media.widthAnchor),
            media.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            media.topAnchor.constraint(equalTo: self.topAnchor),
            media.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            note.topAnchor.constraint(equalTo: media.bottomAnchor, constant: 2),
            note.centerXAnchor.constraint(equalTo: media.centerXAnchor),
        ])
    }
}
