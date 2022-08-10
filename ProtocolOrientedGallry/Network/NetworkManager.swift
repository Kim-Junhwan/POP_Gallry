//
//  NetworkManager.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/10.
//

import Foundation
import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchImage(url: String, completion: @escaping (UIImage)->Void) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil, let image = UIImage(data: data) else { return }
            completion(image)
        }.resume()
    }
    
    func fetchImageList(url: String, completion : @escaping ([ContentResponse]?) -> ()) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(nil)
            } else if let data = data {
                guard let imageList = try? JSONDecoder().decode([ContentResponse].self, from: data) else { return }
                completion(imageList)
            }
        }.resume()
    }
}
