//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Diego Gomez on 2017-01-20.
//  Copyright © 2017 Diego Gomez. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if task.important {
            taskLabel.text = " ❗️\(task.name)"
            
        } else {
          taskLabel.text = task.name
            
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
    
    
    
}
