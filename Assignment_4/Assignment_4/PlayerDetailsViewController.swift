//
//  PlayerDetailsViewController.swift
//  Assignment_4
//
//  Created by Madrigal, Jesus on 2/13/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
