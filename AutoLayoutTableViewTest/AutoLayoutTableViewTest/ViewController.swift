//
//  ViewController.swift
//  AutoLayoutTableViewTest
//
//  Created by Marcelo Luis dos Santos on 8/14/16.
//  Copyright © 2016 Marcelo Luis dos Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var userArray : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userArray = ["Test 1", "Test 2", "Test 3", "Test 4", "Test 5", "Test 6", "Test 7"]
        
        self.tableView!.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (userArray != nil) {
            
            return userArray!.count;
        }
        else {
            
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel!.text = userArray![indexPath.row];
        
        return cell
    }
}

