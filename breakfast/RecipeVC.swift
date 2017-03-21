//
//  RecipeVC.swift
//  breakfast
//
//  Created by Andrew Foster on 1/26/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var recipeLbl: UILabel!
    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var bgImage: UIImageView!
    
    private var _recipe: Recipe!
    
    var recipe: Recipe {
        
        get {
            return _recipe
        } set {
            _recipe = newValue
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = recipe.recipeTitle
        recipeLbl.text = recipe.recipeDescription
        
        viewHeightConstraint.constant = recipeLbl.requiredHeight()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        viewHeightConstraint.constant = recipeLbl.requiredHeight()
        
    }

}
