//
//  SecondaryViewController.swift
//  NoStoryBoard
//
//  Created by Anmol Jain on 09/09/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//

import Foundation
import UIKit

class SecondaryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 18.0/255.0, green: 18.0/255.0, blue: 18.0/255.0, alpha: 1.0)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    
}
