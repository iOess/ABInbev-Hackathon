//
//  ViewExtensions.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/25/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func createBorder(width: CGFloat = 1.5, cornerRadius: CGFloat = 7, color: CGColor = UIColor.black.cgColor) {
        layer.borderWidth = width
        layer.cornerRadius = cornerRadius
        layer.borderColor = color
    }
}
