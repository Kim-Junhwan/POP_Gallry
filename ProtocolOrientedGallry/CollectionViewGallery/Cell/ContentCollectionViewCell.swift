//
//  ContentCollectionViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ContentCollectionViewCell"
    
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentDescriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
