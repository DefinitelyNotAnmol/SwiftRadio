//
//  MainTabBarController.swift
//  NoStoryBoard
//
//  Created by Anmol Jain on 09/09/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    func setUpTabBar() {
        
        let mainNavController = MainNavigationController()
        let secondaryViewController = SecondaryViewController()
        let searchViewController = SearchViewController()
        //        mainNavController.title = "Home"
        //        secondaryViewController.title = "Library"
        //        searchViewController.title = "Search"
        mainNavController.tabBarItem.image = UIImage(named: "home.pdf")?.withRenderingMode(.automatic)
        secondaryViewController.tabBarItem.image = UIImage(named: "library.pdf")?.withRenderingMode(.automatic)
        searchViewController.tabBarItem.image = UIImage(named: "search.pdf")?.withRenderingMode(.automatic)
        
        let mainViewController = MainViewController()
        mainViewController.title = "Hello"
        
        mainNavController.viewControllers = [mainViewController]
        self.viewControllers = [mainNavController, searchViewController, secondaryViewController]
        
        UITabBar.appearance().barTintColor = UIColor(red: 25.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 1.0)
        UITabBar.appearance().tintColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 8, left: 0, bottom: -8, right: 0)
        }
    }
    
}
