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
//private extension FriendsViewCell {
//
//func animateFriendsAvatar() {
//    let animation = CASpringAnimation(keyPath: "transform.scale")
//    animation.autoreverses = true
//    animation.toValue = 0.8
//    animation.stiffness = 200
//    animation.mass = 2
//    animation.duration = 1
//    animation.beginTime = CACurrentMediaTime() + 1
//    animation.fillMode = CAMediaTimingFillMode.backwards
//    
//    self.friendAvatar.layer.add(animation, forKey: nil)
//    }
//}
