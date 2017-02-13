//
//  ViewController.swift
//  Assignment_3.1
//
//  Created by Madrigal, Jesus on 2/12/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    //view variables
    
    let activityList:[String] = ["Sleeping", "Eating", "Working", "Thinking", "Crying", "Begging", "Leaving", "Shopping", "Coding"]
    let feelingList:[String] = ["Awesome", "Sad", "Happy", "Ambivalent", "Nauseous", "Psyched", "Confused", "Hopeful", "Anxious"]
    
    var emailActivity: String = ""
    var emailFeeling: String = ""
    
    
    
    //delegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var returnVal:String = ""
        
        
        if component == 0
        {
            returnVal = activityList[row]
        }
        else if component == 1
        {
            returnVal = feelingList[row]
        }
        else
        {
            print("Error Unknown Component.")
            returnVal = "N/A"
        }
        return returnVal
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0
        {
            emailActivity = activityList[row]
        }
        else if component == 1
        {
            emailFeeling = feelingList[row]
        }
        else
        {
            print("Error Unknown Component.")
        }
    }
    
    //data source
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var returnVal:Int = 0
        
        
        if component == 0
        {
            returnVal = activityList.count
        }
        else if component == 1
        {
            returnVal = feelingList.count
        }
        else
        {
            print("Error Unknown Component.")
            returnVal = 0
        }
        return returnVal
    }
    
    //button actions
    
    @IBAction func sendEmail(sender: AnyObject)
    {
        let alert = UIAlertController(title: "InstaEmail", message: "I'm \(emailActivity) and feeling \(emailFeeling) about it.", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //default functions

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

