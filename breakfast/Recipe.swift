//
//  Recipe.swift
//  breakfast
//
//  Created by Andrew Foster on 1/30/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import Foundation

class Recipe {
    
    private var _recipeTitle: String!
    private var _recipeDescription: String!
    
    var recipeTitle: String {
        return _recipeTitle
    }
    
    var recipeDescription: String {
        return _recipeDescription
    }
    
    init(recipeTitle: String, recipeDescription: String) {
        
        _recipeTitle = recipeTitle
        _recipeDescription = recipeDescription
        
    }
 
}

