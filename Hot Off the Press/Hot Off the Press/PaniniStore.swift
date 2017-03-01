//
//  PaniniStore.swift
//  Hot Off the Press
//
//  Created by Madrigal, Jesus on 3/1/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import Foundation

class PaniniStore: NSObject
{
    var allPaninis: [Panini]
    
    func addPanini (panini: Panini)
    {
        allPaninis.append(panini)
    }
    
    func removePanini (panini: Panini)
    {
        if let index = allPaninis.indexOf(
            {
                let check1 = $0.name == panini.name
                let check2 = check1 && $0.time == panini.time
                let check3 = check2 && $0.ingredients == panini.ingredients
                let check4 = check3 && $0.directions == panini.directions
                let check5 = check4 && $0.image == panini.image
                return check5
            })
		{
            allPaninis.removeAtIndex(index)
        }
    }
    
    override init()
    {
        allPaninis = [Panini]()
        super.init()
        
        let names = ["Benedict Panini", "French Toast Panini", "Mozzarella Panini", "Spinach Lasagna Panini", "Salmon Croquette Panini", "Chicken Pesto Panini"]
        let lists = [["Canadian Bacon", "English Muffins", "Eggs"], ["French Bread", "Eggs", "Milk", "Cream Cheese"], ["Sourdough Bread", "Butter", "Mozzarella Cheese", "Baby Spinach"], ["Ricotta Cheese", "Baby Spinach", "Dried Oregano", "Ciabatta Rolls"], ["Salmon Croquette", "Green Onion", "Minced Red Bell Peppers", "Italian Rolls"], ["Italian Rolls", "Butter", "Basil Pesto", "Roasted Chicken Breast"]]
        let times = ["1 to 2 minutes", "1 to 2 minutes", "3 to 4 minutes", "1 to 2 minutes", "4 to 5 minutes", "3 to 4 minutes"]
        let direction = ["Grill the bacon first and then the muffins.", "Whisk egg and milk", "Place rolls an a work surface and brush crusts with oil.", "Brush one side of bread with butter and place sandwich in grill.", "Place rolls on a work surface and brushcrusts with oil.", "Place rolls on a work surface and brush crusts with oil."]
        
        
        for i in 0..<names.count
        {
            var temp = Panini.init(name: names[i], ingredients: lists[i], time: times[i], directions: direction[i])
            allPaninis.append(temp)
        }
    }
}
