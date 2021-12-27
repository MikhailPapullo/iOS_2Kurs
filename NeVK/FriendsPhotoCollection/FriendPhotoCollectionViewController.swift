//
//  FriendPhotoCollectionViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/4/21.
//

import UIKit

class FriendPhotoCollectionViewController: UICollectionViewController {

    var friends: FriendModel?

    override func viewDidLoad() {
        super.viewDidLoad()
	}

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell",
                                                          for: indexPath) as? PhotoCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        
        cell.configure(model: friends ?? FriendModel(name: "", avatar: ""))
        
        return cell
    }
}
