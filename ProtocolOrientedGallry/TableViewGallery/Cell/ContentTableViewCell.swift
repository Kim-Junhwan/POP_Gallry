//
//  ContentTableViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentTableViewCell: UITableViewCell , MediaContainer{
    
    static let identifier = "ContentTableViewCell"
    
    var content: Content? {
        didSet {
            addView()
            autoLayout()
            contentUpdate()
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        addSubview(media)
        addSubview(note)
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            media.widthAnchor.constraint(equalToConstant: 100),
            media.heightAnchor.constraint(equalTo: media.widthAnchor),
            media.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            media.topAnchor.constraint(equalTo: self.topAnchor),
            media.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            note.leadingAnchor.constraint(equalTo: media.trailingAnchor),
            note.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            note.topAnchor.constraint(equalTo: self.topAnchor),
            note.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
