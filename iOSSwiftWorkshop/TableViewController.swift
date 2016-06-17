//
//  TableViewController.swift
//  iOSSwiftWorkshop
//
//  Created by Daniel Mathews on 2016-06-17.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController {
    
    
    var words = ["Hello", "my", "name", "is", "Dan"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let word = words[indexPath.row]
        cell.textLabel?.text = word
        cell.imageView?.image = UIImage(named: "ed")
        return cell
    }
    
    
}
