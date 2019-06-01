//
//  TableKeyValue.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/09/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TableKeyValue: TableValue {
    public let key: String
    public init(type: TableViewRowType, key:String) {
        self.key = key
        super.init(type: type)
    }
    
    override open func isEqual(to object: Any?) -> Bool {
        if let other = object as? TableKeyValue {
            return self.key == other.key && super.isEqual(to: object)
        }
        return false
    }
    
}
