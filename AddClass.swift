//
//  TimeViewController.swift
//  Final school schedule app
//
//  Created by Caitlyn Castellion on 1/16/22.
//

import UIKit

class TimeViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var startTimeLabel: UITextView!
    
    public var classsTitle: String = ""
    public var classs: String = "" 
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = classsTitle
        startTimeLabel.text = classs
        // Do any additional setup after loading the view.
    }

}
