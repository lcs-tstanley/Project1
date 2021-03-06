//
//  ViewController.swift
//  Project1
//
//  Created by Stanley, Trent on 2020-04-08.
//  Copyright © 2020 Stanley, Trent. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                
                pictures.append(item)
                
            }
        }
        
        print(pictures)
        
    }


}

