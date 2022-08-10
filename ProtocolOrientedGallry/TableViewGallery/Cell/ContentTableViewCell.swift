//
//  ContentTableViewCell.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class ContentTableViewCell: UITableViewCell ,MediaContainer {
    @IBOutlet weak var media: UIImageView!
    
    @IBOutlet weak var note: UILabel!
    
    
    static let identifier = "ContentTableViewCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var content: Content? {
        didSet {
            contentUpdate()
        }
    }
    
    
}
