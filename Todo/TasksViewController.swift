//
//  ViewController.swift
//  Todo
//
//  Created by Joseph Murphy on 8/2/18.
//  Copyright © 2018 Joseph Murphy. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        @IBOutlet weak var tableView: UITableView!
    var tasks : [Task] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks();
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        let task = tasks[indexPath.row];
        cell.textLabel?.text = task.name;
        return cell;
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task();
        task1.name = "guitar";
        return [task1];
    }
    
    @IBAction func clickAddButton(_ sender: Any) {
        performSegue(withIdentifier: "addButton", sender: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

