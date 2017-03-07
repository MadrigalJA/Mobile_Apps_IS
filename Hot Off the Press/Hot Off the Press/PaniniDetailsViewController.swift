//
//  PaniniDetailsViewController.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/6/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit


class PaniniDetailsViewController: UIViewController {
    @IBOutlet weak var nameText: UITextView!
    @IBOutlet weak var timeText: UITextView!
    @IBOutlet weak var ingredientsText: UITextView!
    @IBOutlet weak var directionsText: UITextView!
    var panini: Panini?
    
    required init?(coder adecoder: NSCoder){
        print("init PaniniDetailsViewController")
        super.init(coder: adecoder)
    }
    
    deinit
    {
        print("deinit PaniniDetailsViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.nameText.layer.borderColor = UIColor.grayColor().CGColor
        self.nameText.layer.borderWidth = 1.0;
        self.nameText.layer.cornerRadius = 8;
        self.timeText.layer.borderColor = UIColor.grayColor().CGColor
        self.timeText.layer.borderWidth = 1.0;
        self.timeText.layer.cornerRadius = 8;
        self.ingredientsText.layer.borderColor = UIColor.grayColor().CGColor
        self.ingredientsText.layer.borderWidth = 1.0;
        self.ingredientsText.layer.cornerRadius = 8;
        self.directionsText.layer.borderColor = UIColor.grayColor().CGColor
        self.directionsText.layer.borderWidth = 1.0;
        self.directionsText.layer.cornerRadius = 8;
        if let pan = self.panini
        {
            self.nameText.text = pan.name
            self.timeText.text = pan.time
            self.ingredientsText.text = pan.ingredients
            self.directionsText.text = pan.directions
        }
        else
        {
            self.nameText.text = ""
            self.timeText.text = ""
            self.ingredientsText.text = ""
            self.directionsText.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}