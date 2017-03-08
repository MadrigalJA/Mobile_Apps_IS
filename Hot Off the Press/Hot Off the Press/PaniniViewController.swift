//
//  ViewController.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/1/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit


class PaniniViewController: UITableViewController {
    var paniniStore: PaniniStore = PaniniStore()
    var chosenRow: Int = 0
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return paniniStore.allPaninis.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PaniniNameCell", forIndexPath: indexPath)
        
        let panini = paniniStore.allPaninis[indexPath.row] as Panini
        
        cell.textLabel?.text = panini.name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        chosenRow = indexPath.row
        
        performSegueWithIdentifier("DetailedView", sender: self)
    }
    
    
    @IBAction func toggleEditMode(sender: UIBarButtonItem)
    {
        if editing
        {
            setEditing(false, animated: true)
        }
        else
        {   
            setEditing(true, animated: true)
        }
        
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete
        {
            let panini = paniniStore.allPaninis[indexPath.row]
            self.paniniStore.removePanini(panini)
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
    @IBAction override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailedView"
        {
            if let paniniDetailsViewController = segue.destinationViewController as? PaniniDetailsViewController
            {
                paniniDetailsViewController.panini = paniniStore.allPaninis[chosenRow]
            }
        }
    }

    
    //unwind functions
    
    @IBAction func cancelToPaniniViewController(segue:UIStoryboardSegue) {
    }

    @IBAction func savePaniniDetails(segue:UIStoryboardSegue) {
        if let addPaniniViewController = segue.sourceViewController as? AddPaniniViewController
        {
            if let panini = addPaniniViewController.panini
            {
                paniniStore.allPaninis.append(panini)
                
                let indexPath = NSIndexPath(forRow: paniniStore.allPaninis.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
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
