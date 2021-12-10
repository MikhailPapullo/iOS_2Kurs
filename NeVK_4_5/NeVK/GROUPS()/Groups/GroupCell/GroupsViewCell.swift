//
//  GroupsViewCell.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class GroupsViewCell: UITableViewCell {
    
    @IBOutlet weak var GroupName: UILabel!
    @IBOutlet weak var GroupAvatar: UIImageView!

    func configure(model: GroupModel) {
        GroupAvatar.image = UIImage(named: model.avatar)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
