//
//  TableGenericElement.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/09/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TableGenericElement{
    public var element: TableValue
    public var canBeExpanded : Bool // Bool to determine whether the cell can be expanded
    public var isExpanded : Bool // Bool to determine whether the cell is expanded
    public var children: Array<TableGenericElement>?
    public var action: ((UIViewController)->Void)?
    
    public init(element:TableValue) {
        self.element = element
        self.canBeExpanded = false
        self.isExpanded = false
        self.children = nil
        self.action = nil
    }
    
    public init(element:TableValue, action: ((UIViewController)->Void)?) {
        self.element = element
        self.canBeExpanded = false
        self.isExpanded = false
        self.children = nil
        self.action = action
    }
    
    public init(element:TableValue, canBeExpanded:Bool, isExpanded:Bool, children: Array<TableGenericElement>?, action: ((UIViewController)->Void)?) {
        self.element = element
        self.canBeExpanded = canBeExpanded
        self.isExpanded = isExpanded
        self.children = children
        self.action = action
    }
}

extension TableGenericElement: Equatable{
    public static func == (lhs: TableGenericElement, rhs: TableGenericElement) -> Bool {
        return lhs.element == rhs.element && lhs.canBeExpanded == rhs.canBeExpanded &&
                lhs.children == rhs.children
        //action is not equatable
    }
}

