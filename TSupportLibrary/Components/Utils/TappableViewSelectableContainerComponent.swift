//
//  TappableViewSelectableContainerComponent.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TappableViewSelectableContainerComponent: TappableViewContainerComponent {
    private var _selected: Int?
    
    var selectedCallback : ((_ selected: Int) -> Void)?
    
    var selected: Int? {
        get {
            return _selected
        }
        set {
            if let newValue = newValue{
                if self.tappableViews.count > 0 && newValue <= self.tappableViews.count{
                    newViewSelectedAction(old: _selected, new: newValue)
                }
            }
        }
    }
    
    internal func newViewSelectedAction(old: Int?, new: Int){
        _selected = new
        if let callback = selectedCallback{
            callback(new)
        }
    }
    
    override open func addTappableView(_ view: TappableViewComponent) {
        super.addTappableView(view)
        if self.tappableViews.count > 0 && selected == nil {
            selected = 0
        }
    }
    
}
