//
//  UITabBarViewController.swift
//  SwiftRadio
//
//  Created by Anmol Jain on 07/09/19.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import UIKit

class DashboardTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let home = HomeViewController()
        let homeIcon = UITabBarItem(title: "Title", image: UIImage(named: "info-icon"), selectedImage: UIImage(named: "info-icon"))
        home.tabBarItem = homeIcon
        
        let search = SearchViewController()
        let searchIcon = UITabBarItem(title: "Title", image: UIImage(named: "info-icon"), selectedImage: UIImage(named: "info-icon"))
        search.tabBarItem = searchIcon

        
        let controllers = [home, search]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
        
    }
}
