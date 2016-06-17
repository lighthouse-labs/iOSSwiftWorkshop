//
//  MessagesViewController.swift
//  iOSSwiftWorkshop
//
//  Created by Daniel Mathews on 2016-06-17.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

import UIKit

class MessagesViewController: UITableViewController {

    var messages = [Message]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let query = Message.query()!
        query.addDescendingOrder("createdAt")
        query.findObjectsInBackgroundWithBlock { [weak self] (objects, error) in
            if let messages = objects as? [Message]{
                self?.messages = messages
                self?.tableView.reloadData()
            }
        }
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("messageCell", forIndexPath: indexPath) as! MessageCell

        let message = messages[indexPath.row]
        cell.textMessageLabel.text = message.text
        cell.usernameLabel.text = message.username
        message.userProfile.getDataInBackgroundWithBlock { (data, error) in
            if let data = data {
                cell.profileImageView.image = UIImage(data: data)
            }
        }
        
        return cell
    }
    

}
