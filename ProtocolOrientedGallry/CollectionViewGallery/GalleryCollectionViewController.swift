//
//  GalleryCollectionViewController.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit
import AVFoundation

class GalleryCollectionViewController: UICollectionViewController, ContainContents ,CanShowDetailView{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(ContentCollectionViewCell.self, forCellWithReuseIdentifier: ContentCollectionViewCell.identifier)
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
               flowLayout.itemSize = CGSize(width: 100, height: 100)
               collectionView.collectionViewLayout = flowLayout
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return contents.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContentCollectionViewCell.identifier, for: indexPath) as? ContentCollectionViewCell else { fatalError("cannot found cell") }
    
        // Configure the cell
        cell.content = contents[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showDetailView(withContent: contents[indexPath.row])
    }
    
    
}
