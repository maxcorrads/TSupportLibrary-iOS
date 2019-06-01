//
//  TappableComponent.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 14/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TappableViewComponent : UIView {
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
