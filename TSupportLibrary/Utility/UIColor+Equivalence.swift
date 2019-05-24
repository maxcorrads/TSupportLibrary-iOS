//
//  UIColor+Equivalence.swift
//  SendProtest
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor{
    
    func isEqualToColor(color: UIColor, withTolerance tolerance: CGFloat = 0.0) -> Bool{
        
        var r1 : CGFloat = 0
        var g1 : CGFloat = 0
        var b1 : CGFloat = 0
        var a1 : CGFloat = 0
        var r2 : CGFloat = 0
        var g2 : CGFloat = 0
        var b2 : CGFloat = 0
        var a2 : CGFloat = 0
        
        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
        
        return
            abs(r1 - r2) <= tolerance &&
                abs(g1 - g2) <= tolerance &&
                abs(b1 - b2) <= tolerance &&
                abs(a1 - a2) <= tolerance
    }
    
}
