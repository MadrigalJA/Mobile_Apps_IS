//
//  ViewController.swift
//  Assignment_1
//
//  Created by Madrigal, Jesus on 1/25/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel:UILabel!
    
    let message = "Hello World!"
    
    @IBAction func showMessage(sender: AnyObject) {
        helloLabel.text = message;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

