//
//  MainViewController.swift
//  NoStoryBoard
//
//  Created by Anmol Jain on 09/09/19.
//  Copyright © 2019 Anmol Jain. All rights reserved.
//


//this view will be managed by NavigationViewController
import Foundation
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 18.0/255.0, green: 18.0/255.0, blue: 18.0/255.0, alpha: 1.0)
        addButton()
    }
    
    @objc func buttonTapped() {
        print("Button Pressed")
        let detailViewController = DetailedViewController()
        
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    private func addButton() {
        let mainButton = UIButton()
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainButton.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
        mainButton.setTitle("Settings", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.backgroundColor = .black
        
        view.addSubview(mainButton)
        
        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        
        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        
        let height = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50)
        
        let constraints: [NSLayoutConstraint] = [horizontalCenter, verticalCenter, width, height]
        
        NSLayoutConstraint.activate(constraints)
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
}
