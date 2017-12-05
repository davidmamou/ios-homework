//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by David Mamou on 29/11/17.
//  Copyright © 2017 David Mamou. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals : [Meal] = [
        
    
        Meal(name:"breakfast"),
        Meal(name:"lunch"),
        Meal(name:"Dinner")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let eggsOverEasy = Food(name: "Eggs Over Easy", description: "Really Easy Eggs")
       let banana = Food(name: "Banana", description: "It's a Banana dude")
       let chips = Food(name: "Chips", description: "Fried Potato")
       let burger = Food (name: "Hamburger", description: "fratty f-word")
       let cotelette = Food (name: "cotelette", description: "cotelette d'agneau")
       let candy = Food(name: "stawberry candy", description: "harribo")
       let shwarma = Food (name: "Shwarma", description: "lamb and chicken grease with pita")
       let muesli = Food(name: "Muesli", description: "granola and yogurt ")
       let EBOULETS = Food(name: "Stefan boulette ", description: "Meatballs ")
        
        meals[0].food.append(eggsOverEasy)
        meals[0].food.append(banana)
        meals[0].food.append(muesli)
        
        meals[1].food.append(chips)
        meals[1].food.append(candy)
        meals[1].food.append(cotelette)
        
        meals[2].food.append(EBOULETS)
        meals[2].food.append(shwarma)
        meals[2].food.append(burger)
        
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
 
     override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }
    
}
