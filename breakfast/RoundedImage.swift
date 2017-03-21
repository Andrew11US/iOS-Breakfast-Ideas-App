//
//  RoundedImage.swift
//  breakfast
//
//  Created by Andrew Foster on 1/26/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override func awakeFromNib() {
        
        layer.cornerRadius = 10.0
    }

}
