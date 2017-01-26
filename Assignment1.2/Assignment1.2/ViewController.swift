//
//  ViewController.swift
//  Assignment1.2
//
//  Created by Madrigal, Jesus on 1/25/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tempc:UITextField!
    @IBOutlet var tempf:UITextField!
    
    @IBAction func convert(sender: AnyObject) {
        var tempCValue: Float
        
        if let inText = tempf.text, tempFValue = Float(inText) {
            let value = tempFValue
            tempCValue = (value-32)*5/9
            tempc.text = String(tempCValue)
        } else {
            tempc.text = "???"
            print("The input is not numeric.")
        }
        tempf.resignFirstResponder()
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

