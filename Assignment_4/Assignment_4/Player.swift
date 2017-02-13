//
//  Player.swift
//  Assignment_4
//
//  Created by Madrigal, Jesus on 2/13/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}