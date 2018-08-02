//
//  CompleteTaskViewController.swift
//  Todo
//
//  Created by Joseph Murphy on 8/2/18.
//  Copyright © 2018 Joseph Murphy. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    @IBOutlet weak var taskLabel: UILabel!
    var previousVC = TasksViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        taskLabel.text = task.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func completeTask(_ sender: Any) {
         previousVC.tasks.remove(at: previousVC.selectedIndex)
        
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
