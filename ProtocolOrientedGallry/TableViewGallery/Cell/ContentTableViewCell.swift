//
//  ContentTableViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    
    static let identifier = "ContentTableViewCell"

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
