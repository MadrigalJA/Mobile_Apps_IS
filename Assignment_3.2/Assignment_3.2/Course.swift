//
//  Course.swift
//  Assignment_3.2
//
//  Created by Madrigal, Jesus on 2/12/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import Foundation

class Course: NSObject
{
    var number: String
    var name: String
    var instructor: String
    
    init (number: String, name: String, instructor: String)
    {
        self.number = number
        self.name = name
        self.instructor = instructor
        super.init()
    }
}