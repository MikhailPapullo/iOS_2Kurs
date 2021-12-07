//
//  PhotoCollectionViewCell.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/4/21.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Picture: UIImageView!
    
    func configure(model: FriendModel) {
        Picture.image = UIImage(named: model.avatar)
    }
}
