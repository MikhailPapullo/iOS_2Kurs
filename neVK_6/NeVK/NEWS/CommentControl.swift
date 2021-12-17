//
//  CommentControl.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/11/21.
//

import UIKit

class CommentControl: UIControl {
//    var likesCount: Int = 0
//    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
//        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onClick))
//        recognizer.numberOfTapsRequired = 1
//        recognizer.numberOfTouchesRequired = 1
//
//        return recognizer
//    }()

    private var stackView: UIStackView = UIStackView()
    private var commentImageEmpty: UIImageView = UIImageView()
    private var commentImageFill: UIImageView = UIImageView()
   // private var likesLable: UILabel = UILabel()
    private var bgView: UIView = UIView()

    private func setupView() {

        self.backgroundColor = .clear

        let imageEmpty = UIImage(systemName: "comment")
        commentImageEmpty.frame = CGRect(x: 5, y: 1, width: 22, height: 18)
        commentImageEmpty.image = imageEmpty
        commentImageEmpty.tintColor = .systemGray

        let imageFill = UIImage(systemName: "comment.fill")
        commentImageFill.frame = CGRect(x: 5, y: 1, width: 22, height: 18)
        commentImageFill.image = imageFill
        commentImageFill.tintColor = .red

//        likesLable.frame = CGRect(x: self.frame.size.width - 20, y: 4, width: 10, height: 12)
//        likesLable.text = String(likesCount)
//        likesLable.textAlignment = .center
//        likesLable.textColor = .systemGray
//        likesLable.font = UIFont.systemFont(ofSize: 16)

        bgView.frame = bounds
        bgView.addSubview(commentImageEmpty)
//        bgView.addSubview(commentLable)
        self.addSubview(bgView)
    }

//    @objc func onClick() {
//        if likesCount == 0 {
//            self.likesLable.text = "1"
//            likesCount = 1
//
//            UIView.transition(from: likesImageEmpty,
//                              to: likesImageFill,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve)
//        } else {
//            self.likesLable.text = "0"
//            likesCount = 0
//
//            UIView.transition(from: likesImageFill,
//                              to: likesImageEmpty,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve)
//        }
//
//        likesLable.text = String(likesCount)
//    }

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.setupView()
//        addGestureRecognizer(tapGestureRecognizer)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        self.setupView()
//        addGestureRecognizer(tapGestureRecognizer)
//    }
}
