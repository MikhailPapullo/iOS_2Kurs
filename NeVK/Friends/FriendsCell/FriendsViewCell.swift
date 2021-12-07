//
//  FriendsViewCell.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class FriendsViewCell: UITableViewCell {

    @IBOutlet weak var FriendName: UILabel!
    @IBOutlet weak var FriendAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
