//
//  EmailViewController.swift
//  DUX
//
//  Created by Caitlyn Castellion on 2/27/22.
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
        let appURL = URL(string: "gmail:/)")!
          let application = UIApplication.shared

          if application.canOpenURL(appURL) {
              application.open(appURL)
          } else {
              //Will open the Gmail website in Web Browser if not app is not on phone
              let webURL = URL(string: "https://gmail.com/")!
              application.open(webURL)
          }
}
}
