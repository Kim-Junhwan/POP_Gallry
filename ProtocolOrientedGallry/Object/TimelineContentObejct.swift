//
//  TimelineContentObejct.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation

class TimelineContentObject {
    static let shared = TimelineContentObject()
    var contents: [Content] = [Content(type: .video, url: "https://vod-progressive.akamaized.net/exp=1660421522~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2147%2F5%2F135736646%2F401814096.mp4~hmac=aef9090e706a43ca7974d19528c8ef6777c734f9f44db638bb88027c09c5ae64/vimeo-prod-skyfire-std-us/01/2147/5/135736646/401814096.mp4", description: "나무판자와 웅덩이"), Content(type: .image, url: "https://cdn.pixabay.com/photo/2022/07/24/03/01/old-woman-7340874_960_720.jpg", description: "늙은 여자")]
}
