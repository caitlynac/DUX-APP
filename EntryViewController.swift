//
//  EntryViewController.swift
//  Final school schedule app
//
//  Created by Caitlyn Castellion on 1/16/22.
//

import UIKit

class EntryViewController: UIViewController {
    //Creates the two fields that allow user to input ther class name and the start and end time of their class
    @IBOutlet var titleField: UITextField!
    @IBOutlet var timeField: UITextView!
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        //links the save button to  table view to allow the information inputed to be saved
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }
    @objc func didTapSave() {
        //lets function know not to save information if the two text fields are empty
        if let text = titleField.text, !text.isEmpty, !timeField.text.isEmpty {
            completion?(text, timeField.text)
        }
    }
}

