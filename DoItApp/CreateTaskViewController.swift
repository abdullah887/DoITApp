//
//  CreateTaskViewController.swift
//  DoItApp
//
//  Created by Abdullah alsyari on 11/27/16.
//  Copyright © 2016 Abdullah alsyari. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //create task from
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        //k
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
  
    


}
