//
//  CourseStore.swift
//  Assignment_3.2
//
//  Created by Madrigal, Jesus on 2/12/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import Foundation

class CourseStore: NSObject
{
    var allCourses:[[Course]]
    
    func addCourse(track: Int, course: Course)
    {
        allCourses[track].append(course)
    }
    
    
    func removeCourse(course: Course)
    {
        if let index = allCourses.indexOf(course)
        {
            allCourses.removeAtIndex(index)
        }
    }
    
    override init()
    {
        allCourses = [[Course](), [Course](), [Course](), [Course]()]
        super.init()
        let numbers:[[String]] = [["CAP4630", "CAP6671"], ["CEN4535C", "CEN6016"], ["CIS4327", "CIS4850C", "CIS6320"], ["COP2220", "COP3530", "COP5716"]]
        let names: [[String]] = [["Artificial Intelligence", "Intelligent Systems"], ["Dev Game and Mob App", "Engineering of Software I"], ["Information Sys Sr Project I", "Spatial Information Systems", "Distributed/Internet Systems"], ["Computer Science I", "Data Structures", "Data Modeling and Performance"]]
        let instructors: [[String]] = [["Chuan", "Chuan"], ["Chuan", "Roggio"], ["Umapathy", "Lambert", "Ahuja"], ["Martin", "Martin", "Seyed-Abbassi"]]
        var i:Int = 0
        var j:Int = 0
        
        
        while i < numbers.count
        {
            j = 0
            while j < numbers[i].count
            {
                var course = Course.init(number: numbers[i][j], name: names[i][j], instructor: instructors[i][j])
                self.addCourse( i, course: course)
                j++
            }
            i++
        }
    }
}