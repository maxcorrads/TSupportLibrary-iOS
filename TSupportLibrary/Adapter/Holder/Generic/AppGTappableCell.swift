//
//  AppGTappableCell.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 29/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

open class AppGTappableCell: AppGCell {
    let tapGesture = UITapGestureRecognizer()
    
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
        makeViewTappable(view: contentView)
    }
    
    private func addTapGesture(_ view: UIView){
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        makeTappable()
    }
    
}
