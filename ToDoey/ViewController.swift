//
//  ViewController.swift
//  ToDoey
//
//  Created by Asem Qaffaf on 10/30/18.
//  Copyright © 2018 Asem Qaffaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        
        var instArry = TodoListViewController()
        instArry.itemArray.append(textField.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
