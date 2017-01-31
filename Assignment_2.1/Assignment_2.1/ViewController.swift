//
//  ViewController.swift
//  Assignment_2.1
//
//  Created by Madrigal, Jesus on 1/30/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var billInText:UITextField!
    @IBOutlet var tenPercentTipText:UITextField!
    @IBOutlet var fifteenPercentTipText:UITextField!
    @IBOutlet var twentyPercentTipText:UITextField!
    @IBOutlet var tenPercentTotalText:UITextField!
    @IBOutlet var fifteenPercentTotalText:UITextField!
    @IBOutlet var twentyPercentTotalText:UITextField!
    
    @IBAction func calcTip (sender: AnyObject){
        if let bill = billInText.text {
            if let subtotal = Float(bill){
                let tenPercentTip = subtotal * 0.10
                let fifteenPercentTip = subtotal * 0.15
                let twentyPercentTip = subtotal * 0.20
                let tenPercentTotal = subtotal + tenPercentTip
                let fifteenPercentTotal = subtotal + fifteenPercentTip
                let twentyPercentTotal = subtotal + twentyPercentTip
                
                tenPercentTipText.text = String(tenPercentTip)
                fifteenPercentTipText.text = String(fifteenPercentTip)
                twentyPercentTipText.text = String(twentyPercentTip)
                tenPercentTotalText.text = String(tenPercentTotal)
                fifteenPercentTotalText.text = String(fifteenPercentTotal)
                twentyPercentTotalText.text = String(twentyPercentTotal)
                
                billInText.resignFirstResponder()
                
            } else {
                print("Error String entered is not digits")
            }
        } else {
            print("Error Empty optional 'billInText.text'")
        }
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

