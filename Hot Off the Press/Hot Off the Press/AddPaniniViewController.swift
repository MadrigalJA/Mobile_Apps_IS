//
//  AddPaniniViewController.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/6/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit


class AddPaniniViewController: UIViewController {
    @IBOutlet weak var nameText: UITextView!
    @IBOutlet weak var timeText: UITextView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var directionsText: UITextView!
    var panini: Panini?
    
    required init?(coder adecoder: NSCoder){
        print("init AddPaniniViewController")
        super.init(coder: adecoder)
    }
    
    deinit
    {
        print("deinit AddPaniniViewController")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePaniniDetail"
        {
            panini = Panini.init(name: nameText.text, ingredients: ingredientsText.text, time: timeText.text, directions: directionsText.text)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.nameText.text = ""
        self.nameText.layer.borderColor = UIColor.grayColor().CGColor
        self.nameText.layer.borderWidth = 1.0;
        self.nameText.layer.cornerRadius = 8;
        self.timeText.text = ""
        self.timeText.layer.borderColor = UIColor.grayColor().CGColor
        self.timeText.layer.borderWidth = 1.0;
        self.timeText.layer.cornerRadius = 8;
        self.ingredientsText.text = ""
        self.ingredientsText.layer.borderColor = UIColor.grayColor().CGColor
        self.ingredientsText.layer.borderWidth = 1.0;
        self.ingredientsText.layer.cornerRadius = 8;
        self.directionsText.text = ""
        self.directionsText.layer.borderColor = UIColor.grayColor().CGColor
        self.directionsText.layer.borderWidth = 1.0;
        self.directionsText.layer.cornerRadius = 8;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}