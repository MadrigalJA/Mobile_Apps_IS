//
//  ViewController.swift
//  Assignment_3.2
//
//  Created by Madrigal, Jesus on 2/12/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class CourseViewController: UITableViewController {
    
    var courseStore: CourseStore!
    
    //data source
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        let course = courseStore.allCourses[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(course.number) \(course.name)"
        cell.detailTextLabel?.text = course.instructor
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let courseNum = courseStore.allCourses[section][1].number
        let courseTrack = courseNum.substringToIndex( courseNum.startIndex.advancedBy(3))
        
        return "\(courseTrack) Courses"
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return courseStore.allCourses.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseStore.allCourses[section].count
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

