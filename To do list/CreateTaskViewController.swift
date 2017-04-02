//
//  CreateTaskViewController.swift
//  To do list
//
//  Created by Faisal Alkhotaifi on 4/1/17.
//  Copyright © 2017 Faisal Alkhotaifi. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousViewController = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        // Create a task from the outlet information
        let task = Task()
        task.name = taskName.text!
        task.important = importantSwitch.isOn
        
        // then add new task to array in previous viewController
        previousViewController.tasks.append(task)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }


}
