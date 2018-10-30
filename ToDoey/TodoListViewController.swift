//
//  ViewController.swift
//  ToDoey
//
//  Created by Asem Qaffaf on 10/29/18.
//  Copyright © 2018 Asem Qaffaf. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController{

    let arr = ["one", "two", "three"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemsCell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    // MARK: Table View Deleget
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arr[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }
    
}
