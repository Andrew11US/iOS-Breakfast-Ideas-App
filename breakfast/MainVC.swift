//
//  ViewController.swift
//  breakfast
//
//  Created by Andrew Foster on 1/26/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var recipes = [Recipe]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let r1 = Recipe(recipeTitle: "Berry Yogurt Smoothie", recipeDescription: "To make this smoothie simply add all of the ingredients to a blender and pulse for 30 seconds. Stir and pulse again for another 30 seconds until blended. Divide between two glasses and serve immediately. Garnish with blueberries and blackberries if desired.")
        
        recipes.append(r1)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeCell {
            
            let recipe = recipes[indexPath.row]
            cell.updateUI(recipe: recipe)
            
            return cell
        } else {
            
            return UITableViewCell()
        }

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let recipe = recipes[indexPath.row]
        performSegue(withIdentifier: "RecipeVC", sender: recipe)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? RecipeVC {
            
            if let recipe = sender as? Recipe {
                destination.recipe = recipe
            }
        }
    }

}

