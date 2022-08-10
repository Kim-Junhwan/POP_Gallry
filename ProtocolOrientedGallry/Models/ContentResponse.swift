//
//  ContentResponse.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/10.
//

import Foundation

struct ContentResponse: Codable {
    let id: String
    let width: Double
    let height: Double
    let description: String?
    let urls: ImageURL
}

struct ImageURL: Codable {
    let small: String
}
