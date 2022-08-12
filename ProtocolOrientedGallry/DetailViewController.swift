//
//  DetailViewController.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/11.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var content: Content?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let content = content {
            self.detailImageView.load(url: content.url)
            self.detailDescriptionLabel.text = content.description
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
