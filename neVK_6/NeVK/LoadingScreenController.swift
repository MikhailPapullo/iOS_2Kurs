////
////  LoadingScreenController.swift
////  NeVK
////
////  Created by Mikhail Papullo on 12/14/21.
////
//
//import UIKit
//
//class LoadingScreenController: UIViewController {
//
//    let circle = UIView()
//    var displayLink: CADisplayLink!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupCircle()
//        displayLink = CADisplayLink(target: self, selector: #selector(handleAnimations))
//        displayLink.add(to: RunLoop.main, forMode: DefaultIndices)
//    }
//
//    @objc fileprivate func handleAnimations() {
//
//
//    }
//
//    fileprivate func setupCircle() {
//        view.addSubview(circle)
//        circle.layer.cornerRadius = 50
//        circle.backgroundColor = .blue
//        circle.translatesAutoresizingMaskIntoConstraints = false
//        circle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
//    }
//
//    }
