//
//  CanShowDetailView.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import Foundation
import UIKit

protocol CanShowDetailView{
    func showDetailView(withContent content: Content)
    var navigationController: UINavigationController? { get }
}

extension CanShowDetailView where Self:UIViewController {
    
    func showDetailView(withContent content: Content) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let newVC = storyboard.instantiateViewController(identifier: "DetailView") as? DetailViewController else { return }
        newVC.content = content
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    
}
