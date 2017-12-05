//
//  Meal.swift
//  MealTracker
//
//  Created by David Mamou on 29/11/17.
//  Copyright © 2017 David Mamou. All rights reserved.
//

import Foundation

struct Meal {
    var name : String
    var food : [Food]
    
    
    
    init(name: String, food:[Food] = []) {
        self.name = name
        self.food = food
    }
    
}
