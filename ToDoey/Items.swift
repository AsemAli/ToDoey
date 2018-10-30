//
//  Items.swift
//  ToDoey
//
//  Created by Asem Qaffaf on 10/30/18.
//  Copyright © 2018 Asem Qaffaf. All rights reserved.
//

import UIKit

class Items{

    
    var arrayOfItems: [String] = ["eee"]
    var arrOfNumbers: [Int] = [Int]()
    
    func add(Data: Any)  {
        
        arrayOfItems.append(Data as! String)
        

    }
    func print() -> [Any] {
        return [ arrayOfItems]
    }
    
    
    
    }
    
   


