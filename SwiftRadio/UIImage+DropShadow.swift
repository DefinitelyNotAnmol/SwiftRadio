//
//  UIImage+DropShadow.swift
//  Swift Radio
//
//  Created by Anmol Jain on 7/6/19.
//  Copyright (c) Anmol Jain. All rights reserved.
//

import UIKit

extension UIImageView {

    // APPLY DROP SHADOW
    func applyShadow() {
		let layer           = self.layer
		layer.shadowColor   = UIColor.black.cgColor
		layer.shadowOffset  = CGSize(width: 0, height: 1)
		layer.shadowOpacity = 0.4
		layer.shadowRadius  = 2
    }

}
