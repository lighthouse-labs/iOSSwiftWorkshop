//
//  ViewController.swift
//  iOSSwiftWorkshop
//
//  Created by Daniel Mathews on 2016-06-17.
//  Copyright © 2016 Daniel Mathews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedButton(sender: UIButton) {
        
        let image1 = UIImage(named: "ed")
        
        imageView.image = image1
        
        
        
    }
    


}

