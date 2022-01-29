//
//  ViewController.swift
//  Final school schedule app
//
//  Created by Caitlyn Castellion on 1/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var table: UITableView!
    var models: [(title: String, classs: String)] = []
    
    
    
    override func viewDidLoad() {
        //Helps create UI view
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Class Schedule"
        
    }
    //Links action to the right bar button item that leads to the view controller that allows user to input the class info
    @IBAction func didTapNewClass() {
        guard let vc =  storyboard?.instantiateViewController(withIdentifier: "new") as? EntryViewController else {
            return
        }
        vc.title = "New Class"
        vc.navigationItem.largeTitleDisplayMode = .never
        //Lets the data be stored in the table view
        vc.completion  = { classTitle, classs in
            self.navigationController?.popToRootViewController(animated: true)
            self.models.append((classTitle, classs))
            self.table.isHidden = false
            self.table.reloadData()
            
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(  _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    //Allows information to be displayed in table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].classs
        return cell
    }
}

