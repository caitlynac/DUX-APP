//
//  LunchEvent EditViewController.swift
//  DUX
//
//  Created by Caitlyn Castellion on 3/28/22.
//

import UIKit


import UIKit

class LunchEventEditViewController: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.date = selectedDate2
    }
    
    @IBAction func saveAction(_ sender: Any){
        let newEvent = Event()
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = datePicker.date
        
        
        eventsList.append(newEvent)
        navigationController?.popViewController(animated: true)
    }
    
}


