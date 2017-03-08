//
//  ImageViewController.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/8/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ImageViewController : UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    var img: UIImage? = UIImage(named: "error.jpg")

    required init?(coder aDecoder: NSCoder) {
        print("init ImageViewController")
        super.init(coder: aDecoder)
    }
    
    deinit
    {
        print("deinit ImageViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let imge = self.img
        {
            self.imgView.image = imge
        }
        else
        {
            self.imgView.image = UIImage(named: "error.jpg")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
