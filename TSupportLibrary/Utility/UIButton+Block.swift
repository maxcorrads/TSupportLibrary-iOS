//
//  UIButton+Block.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 06/04/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//
// http://stackoverflow.com/a/33461778

import Foundation
import ObjectiveC
import UIKit

var ActionBlockKey: UInt8 = 0

// a type for our action block closure
public typealias BlockButtonActionBlock = (_ sender: UIButton) -> Void

public class ActionBlockWrapper : NSObject {
    var block : BlockButtonActionBlock
    init(block: @escaping BlockButtonActionBlock) {
        self.block = block
    }
}

public extension UIButton {
    func block_setAction(block: @escaping BlockButtonActionBlock, for control: UIControl.Event) {
        objc_setAssociatedObject(self, &ActionBlockKey, ActionBlockWrapper(block: block), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        self.addTarget(self, action: #selector(UIButton.block_handleAction), for: .touchUpInside)
    }
    
    @objc func block_handleAction(sender: UIButton, for control:UIControl.Event) {
        let wrapper = objc_getAssociatedObject(self, &ActionBlockKey) as! ActionBlockWrapper
        wrapper.block(sender)
    }
}
