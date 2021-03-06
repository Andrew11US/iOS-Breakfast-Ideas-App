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
        
        loadRecipes()
        
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
        
        return 220
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let recipe = recipes[indexPath.row]
        
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "RecipeVC", sender: recipe)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? RecipeVC {
            
            if let recipe = sender as? Recipe {
                destination.recipe = recipe
            }
        }
    }
    
    func loadRecipes() {
        
        recipes.append(r1)
        recipes.append(r2)
        recipes.append(r3)
        recipes.append(r4)
        recipes.append(r5)
        recipes.append(r6)
        recipes.append(r7)
        recipes.append(r8)
        recipes.append(r9)
        recipes.append(r10)
    }

}

