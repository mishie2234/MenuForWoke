//
//  BackTableVC.swift
//  MenuForWoke
//
//  Created by GWC project on 8/17/16.
//  Copyright © 2016 GWC project. All rights reserved.
//

import Foundation

class BackTableVC : UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
    TableArray=["Home","Profile","Topics","Organizations","Activist","Help","Settings"]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
        
    }
}