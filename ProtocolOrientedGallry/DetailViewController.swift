//
//  DetailViewController.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/11.
//

import UIKit

class DetailViewController: UIViewController , MediaContainer{
    var content: Content? {
        didSet {
            contentUpdate()
        }
    }
    
    lazy var note: UILabel = {
        let note = UILabel()
        note.translatesAutoresizingMaskIntoConstraints = false
        return note
    }()
    
    lazy var videoView: VideoView = {
        let videoView = VideoView(url: "")
        videoView.translatesAutoresizingMaskIntoConstraints = false
        return videoView
    }()
    
    lazy var mediaImageView: UIImageView = {
        let mediaImageView = UIImageView()
        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
        return mediaImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let content = content {
            self.content = content
            print(content)
        }
        addView()
        autolayOut()
        // Do any additional setup after loading the view.
    }
    
    func addView() {
        self.view.addSubview(media)
        self.view.addSubview(note)
    }
    
    func autolayOut() {
        NSLayoutConstraint.activate([
            media.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            media.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            media.widthAnchor.constraint(equalToConstant: 400),
            media.heightAnchor.constraint(equalTo: media.widthAnchor),
            
            note.topAnchor.constraint(equalTo: media.bottomAnchor ,constant: 5),
            note.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
