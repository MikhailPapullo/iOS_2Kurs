//
//  ViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 11/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    //MARK: - lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        let hideKeyBoardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(hideKeyBoardGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWasShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillBeHidden(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillHideNotification,
                                                  object: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let checkResult = checkUserData()
        
        if !checkResult {
            showLoginError()
        }
        
        loginInput.text = ""
        passwordInput.text = ""
        return checkResult
    }
    
    @IBAction func unwindvc(unwind: UIStoryboardSegue) {}
    
    @objc func hideKeyboard() {
        scrollView.endEditing(true)
        
    }
    
    @objc func keyboardWasShow(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey:UIResponder.keyboardFrameEndUserInfoKey) as! NSValue) .cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
}

//MARK: - UIScrollViewDelegate
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentOffset.x = 0.0
    }
}

private extension ViewController {
    func checkUserData() -> Bool {
        guard
            let login = loginInput.text,
            let password = passwordInput.text
        else {
            return false
        }
        
        if login == "admin" && password == "1234" {
            return true
        } else {
            return false
        }
    }
    
    func showLoginError() {
        let alert = UIAlertController(title: "Ты не админ!",
                                      message: "Здесь тебе не место",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
}
