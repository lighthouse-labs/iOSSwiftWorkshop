//
//  AddMessageViewController.swift
//  iOSSwiftWorkshop
//
//  Created by Daniel Mathews on 2016-06-17.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

import Foundation
import UIKit
import Parse

class AddMessageViewController :UIViewController {
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBAction func saveButtonPressed(sender: UIBarButtonItem) {
        
        let message = Message()
        message.text = messageTextField.text!
        message.username = usernameTextField.text!
        
        message.saveInBackgroundWithBlock { (success, error) in
            if success {
                print("Yay! successfully saved message")
            }
        }
        
    }
    
    
}