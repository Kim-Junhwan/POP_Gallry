//
//  Content.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation

struct Content {
    enum MediaType {
        case image
        case video
    }
    
    var type: Content.MediaType
    var url: String
    var description: String
}
