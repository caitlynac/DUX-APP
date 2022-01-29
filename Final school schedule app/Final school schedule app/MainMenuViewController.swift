//
//  MainMenuViewController.swift
//  Final school schedule app
//
//  Created by Caitlyn Castellion on 1/27/22.
//

import UIKit

class MainMenuViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        //Creates button at bottom of viewcontroller that displays the text "Share"
        let button = UIButton(frame: CGRect(x: 16, y: 739, width: 100, height: 50))
        view.addSubview(button)
        button.setTitle("Share", for: .normal)
        //Creates the shape and color of the button
        button.layer.cornerRadius = 25
        button.backgroundColor = .opaqueSeparator
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    //Allows the button to open Instagram app when tapped
        @objc private func didTapButton() {
            let appURL = URL(string: "instagram:/)")!
              let application = UIApplication.shared

              if application.canOpenURL(appURL) {
                  application.open(appURL)
              } else {
                  //Will open the Instagram website in Web Browser if not app is not on phone
                  let webURL = URL(string: "https://instagram.com/")!
                  application.open(webURL)
              }

          }
    }



