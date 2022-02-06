//
//  EmailViewController.swift
//  Final school schedule app
//
//  Created by Caitlyn Castellion on 1/22/22.
//

import MessageUI
import UIKit
import SafariServices
class ViewControllerEmail: UIViewController, UINavigationControllerDelegate, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y:0, width: 220, height: 50))
        view.addSubview(button)
        button.setTitle("Contact Your Teacher", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.center = view.center
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    @objc private func didTapButton() {
        if MFMailComposeViewController.canSendMail(){
            let vc = MFMailComposeViewController()
            vc.delegate = self
            vc.setSubject("Contact Teacher")
            vc.setToRecipients(["hello@school123.io"])
            vc.setMessageBody("Message...", isHTML: true)
            present(UINavigationController(rootViewController:vc), animated: true)
        }
}
}
