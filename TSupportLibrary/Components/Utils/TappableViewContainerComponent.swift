//
//  TappableViewContainerComponent.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TappableViewContainerComponent : UIView {
    private var mTappableViews = Array<TappableViewComponent>()
    
    public var tappableViews: Array<TappableViewComponent> {
        return mTappableViews
    }
    
    open func addTappableView(_ view: TappableViewComponent){
        if !mTappableViews.contains(view) {
            mTappableViews.append(view)
        }
    }
    
}
