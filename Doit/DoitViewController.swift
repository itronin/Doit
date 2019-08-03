//
//  ViewController.swift
//  Doit
//
//  Created by Igor Tro on 03/08/2019.
//  Copyright © 2019 Igor Tro. All rights reserved.
//

import UIKit

class DoitViewController: UITableViewController {

    let itemArray = ["Create a business idea", "Develop a monetization plan", "Set a milestones"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK - Tableview DataSource Methods
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DoitItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print (itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

