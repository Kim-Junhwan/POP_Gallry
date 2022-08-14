//
//  TimelineContentObejct.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation

class TimelineContentObject {
    static let shared = TimelineContentObject()
    var contents: [Content] = [Content(type: .video, url: "https://vod-progressive.akamaized.net/exp=1660462120~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F3514%2F13%2F342571552%2F1369898518.mp4~hmac=f61c8402bbb449b910e8b85073481e8d5a0be4a18b60321136db0b8954cb29ad/vimeo-prod-skyfire-std-us/01/3514/13/342571552/1369898518.mp4", description: "나무판자와 웅덩이"), Content(type: .image, url: "https://cdn.pixabay.com/photo/2022/07/24/03/01/old-woman-7340874_960_720.jpg", description: "늙은 여자")]
}
