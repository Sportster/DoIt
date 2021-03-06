//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Diego Gomez on 2017-01-14.
//  Copyright © 2017 Diego Gomez. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameField: UITextField!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // create taask from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //pop back
        
        navigationController!.popViewController(animated: true)
    }
    
}
