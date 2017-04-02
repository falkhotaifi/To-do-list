//
//  SelectedTaskViewController.swift
//  To do list
//
//  Created by Faisal Alkhotaifi on 4/2/17.
//  Copyright © 2017 Faisal Alkhotaifi. All rights reserved.
//

import UIKit

class SelectedTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousViewController = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        }else {
            taskLabel.text = task.name
        }

    }
    
    @IBAction func completeButton(_ sender: Any) {
        previousViewController.tasks.remove(at: previousViewController.SelectedIndex)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}
