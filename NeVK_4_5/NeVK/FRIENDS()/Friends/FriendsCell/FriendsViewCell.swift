//
//  FriendsViewCell.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class FriendsViewCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendAvatar: CustomPicture!
    
    func configure(name: String, image: UIImage) {
        friendName.text = name
        friendAvatar.image = image
    }
}
