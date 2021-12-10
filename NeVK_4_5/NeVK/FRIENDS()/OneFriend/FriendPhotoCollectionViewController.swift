//
//  FriendPhotoCollectionViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/4/21.
//

import UIKit

class FriendPhotoCollectionViewController: UICollectionViewController {

    var friend: FriendModel?

    override func viewDidLoad() {
        super.viewDidLoad()
	}

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell",
                for: indexPath) as? PhotoCollectionViewCell
        else {
            return UICollectionViewCell() }
        
        if let friendCell = friend {
            cell.picture.image = UIImage(named: friendCell.avatar) ?? UIImage()
            cell.picture2.image = UIImage(named: friendCell.pic) ?? UIImage()
            cell.friendName.text = friendCell.name
        }
        return cell
    }
}
