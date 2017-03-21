//
//  RecipeCell.swift
//  breakfast
//
//  Created by Andrew Foster on 1/26/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
   
    }
    
    func updateUI(recipe: Recipe) {
        
        titleLbl.text = recipe.recipeTitle
        recipeImage.image = UIImage(named: recipe.recipeTitle.lowercased())
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
