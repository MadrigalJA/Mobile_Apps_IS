//
//  panini.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/1/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

struct Panini {
    var name: String
    var ingredients: [String]
    var time: String
    var directions: String
    var image: String
    
    
    init (name: String, ingredients: [String], time: String, directions: String)
    {
        self.name = name
        self.ingredients = ingredients
        self.time = time
        self.directions = directions
        self.image = ""
    }
    
    init()
    {
        self.name = ""
        self.ingredients = [String]()
        self.time = ""
        self.directions = ""
        self.image = ""
    }
}
