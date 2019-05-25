//
//  PaddingLabel.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 30/01/19.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable open class PaddingLabel: UILabel {
    
    @IBInspectable var topInset: CGFloat = 5.0
    @IBInspectable var bottomInset: CGFloat = 5.0
    @IBInspectable var leftInset: CGFloat = 7.0
    @IBInspectable var rightInset: CGFloat = 7.0
    
    override open func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override open var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
    
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
        makeViewTappable(view: self)
    }
    
    private func addTapGesture(_ view: UIView){
        view.isUserInteractionEnabled = true
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
    
}
