//
//  GalleryTableViewController.swift
//  ProtocolOrientedGallry
//
//  Created by JunHwan Kim on 2022/08/09.
//

import UIKit

class GalleryTableViewController: UITableViewController, ContainContents ,CanShowDetailView {

    let CLIENT_ID = "563492ad6f91700001000001cc9894a0d2e546c0aaa37a27b875818c"
    let url = "https://api.unsplash.com/photos/?client_id=-zl2niPFVFHI-v3tBrXmhFXu3tGrW8qQbg55-dkXJPU&per_page=10"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(ContentTableViewCell.self, forCellReuseIdentifier: ContentTableViewCell.identifier)
        //API를 이용하여 이미지 리스트 가져오는 기능, 동영상을 가져올수 없음 일단은 주석처리
//        NetworkManager.shared.fetchImageList(url: url) { result in
//            if let result = result {
//                result.forEach { content in
//                    TimelineContentObject.shared.contents.append(Content(type: content., url: content.urls.small, description: content.description ?? "설명 없음"))
//                }
//            }
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
//        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contents.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentTableViewCell.identifier, for: indexPath) as? ContentTableViewCell else { fatalError("cannot found cell") }
        // Configure the cell...
        cell.content = contents[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showDetailView(withContent: contents[indexPath.row])
    }
}
