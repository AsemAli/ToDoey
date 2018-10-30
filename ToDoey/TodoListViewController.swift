//
//  ViewController.swift
//  ToDoey
//
//  Created by Asem Qaffaf on 10/29/18.
//  Copyright © 2018 Asem Qaffaf. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController{

    var arr = ["one", "two", "three"]

    
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
    //MARK: ADD new items
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
         var texts = UITextField()
        let alert = UIAlertController(title: "add new the Doey Items", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "add item", style: .default) { (action) in
           print(texts.text)
            self.arr.append(texts.text!)
            self.tableView.reloadData()
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder  = "create new item"
         texts = alertTextField
        }
        alert.addAction(action)
        
        present(alert,animated: true,completion: nil)
        
    }
    
}
