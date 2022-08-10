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
        guard let newNC = self.storyboard?.instantiateViewController(withIdentifier: "DetailView") else { return }
        self.navigationController?.pushViewController(newNC, animated: true)
    }
}
