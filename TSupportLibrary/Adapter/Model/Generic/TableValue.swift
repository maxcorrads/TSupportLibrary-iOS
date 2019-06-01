//
//  TableValue.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/09/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TableValue : Eq{
    public var type: TableViewRowType
    public init(type: TableViewRowType) {
        self.type = type
    }
    
    override open func isEqual(to object: Any?) -> Bool {
        if let other = object as? TableValue {
            return self.type == other.type
        }
        return false
    }
    
    public func getReuseId() -> String{
        return type
    }
    
    public func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    public func getSize() -> CGSize? {
        return nil
    }
}
