//
//  TappableLabelComponent.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 26/01/19.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TappableLabelComponent: UILabel {
    public let tapGesture = UITapGestureRecognizer()
    
    public func makeViewTappable(view: UIView) {
        if let grs = view.gestureRecognizers {
            if (!grs.contains(tapGesture)){
                addTapGesture(view)
            }
        }else{
            addTapGesture(view)
        }
    }
    
    public func makeTappable() {
        makeViewTappable(view: self)
    }
    
    private func addTapGesture(_ view: UIView){
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
}
