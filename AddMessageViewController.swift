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
    
    
    @IBAction func saveButtonPressed(sender: UIBarButtonItem) {
        
        let message = Message()
//        message.text =
//        message.username =
        
        message.saveInBackgroundWithBlock { (success, error) in
            if success {
                print("Yay! successfully saved message")
            }
        }
        
    }
    
    
}