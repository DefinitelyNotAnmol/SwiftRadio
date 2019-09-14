//
//  MainNavController.swift
//  NoStoryBoard
//
//  Created by Anmol Jain on 09/09/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//


import Foundation
import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 25.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
    
}
