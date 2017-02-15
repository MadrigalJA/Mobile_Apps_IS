//
//  PlayersViewController.swift
//  Assignment_4
//
//  Created by Madrigal, Jesus on 2/13/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    var players:[Player] = playersData
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
            as! PlayerCell
        
        let player = players[indexPath.row] as Player
        cell.player = player
        return cell
    }
    
    
//unwind functions
    
    
    @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(segue:UIStoryboardSegue) {
        if let playerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController
        {
            if let player = playerDetailsViewController.player
            {
                players.append(player)
                
                let indexPath = NSIndexPath(forRow: players.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
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