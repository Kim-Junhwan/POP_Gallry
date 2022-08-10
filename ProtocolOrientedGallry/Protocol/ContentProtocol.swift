//
//  ContentProtocol.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation

protocol ContainContents {
    var contents: [Content] { get }
}

extension ContainContents {
    var contents: [Content] {
        return TimelineContentObject.shared.contents
    }
}

