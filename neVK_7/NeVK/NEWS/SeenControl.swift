//
//  SeenControl.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/12/21.
//

import UIKit

class SeenControl: UIControl {
    var seenCount: Int = 0
    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onClick))
        recognizer.numberOfTapsRequired = 1
        recognizer.numberOfTouchesRequired = 1

        return recognizer
    }()

    private var stackView: UIStackView = UIStackView()
//    private var seenImageEmpty: UIImageView = UIImageView()
//    private var seenImageFill: UIImageView = UIImageView()
    private var seenLable: UILabel = UILabel()
    private var bgView: UIView = UIView()

    private func setupView() {

        self.backgroundColor = .clear

//        let imageEmpty = UIImage(systemName: "heart")
//        likesImageEmpty.frame = CGRect(x: 10, y: 23, width: 23, height: 19)
//        likesImageEmpty.image = imageEmpty
//        likesImageEmpty.tintColor = .systemBlue
//
//        let imageFill = UIImage(systemName: "heart.fill")
//        likesImageFill.frame = CGRect(x: 10, y: 23, width: 23, height: 19)
//        likesImageFill.image = imageFill
//        likesImageFill.tintColor = .red

        seenLable.frame = CGRect(x: self.frame.size.width - 8, y: 19, width: 12, height: 15)
        seenLable.text = String(seenCount)
        seenLable.textAlignment = .center
        seenLable.textColor = .systemBlue
        seenLable.font = UIFont.systemFont(ofSize: 17)

        bgView.frame = bounds
//        bgView.addSubview(seenImageEmpty)
        bgView.addSubview(seenLable)
        self.addSubview(bgView)
    }

    @objc func onClick() {
        if seenCount == 0 {
            self.seenLable.text = "1"
            seenCount = 1

//            UIView.transition(from: likesImageEmpty,
//                              to: likesImageFill,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve)
        } else {
            self.seenLable.text = "0"
            seenCount = 0

//            UIView.transition(from: likesImageFill,
//                              to: likesImageEmpty,
//                              duration: 0.2,
//                              options: .transitionCrossDissolve)
        }

        seenLable.text = String(seenCount)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
        addGestureRecognizer(tapGestureRecognizer)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
        addGestureRecognizer(tapGestureRecognizer)
    }
}
