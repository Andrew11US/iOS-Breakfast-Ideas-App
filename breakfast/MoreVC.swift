//
//  AboutVC.swift
//  breakfast
//
//  Created by Andrew Foster on 1/30/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class MoreVC: UIViewController {

    let link = "http://www.google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnPressed(_ sender: AnyObject) {
        
        if let url = URL(string: link){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }


}
