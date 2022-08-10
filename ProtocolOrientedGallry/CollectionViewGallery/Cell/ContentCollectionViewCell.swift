//
//  ContentCollectionViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell ,MediaContainer{
    static let identifier = "ContentCollectionViewCell"
    
    @IBOutlet weak var media: UIImageView!
    @IBOutlet weak var note: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var content: Content? {
        didSet {
            contentUpdate()
        }
    }
    
    

}
