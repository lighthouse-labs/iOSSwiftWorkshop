//
//  Message.swift
//  iOSSwiftWorkshop
//
//  Created by Daniel Mathews on 2016-06-17.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

import Foundation
import Parse

class Message: PFObject, PFSubclassing {
    
    @NSManaged var text:String
    @NSManaged var username:String
    @NSManaged var userProfile:PFFile
    
    static func parseClassName() -> String {
        return "Message"
    }
    
}