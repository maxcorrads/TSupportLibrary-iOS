//
//  TableElementWithValue.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/09/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

open class TableElementWithValue<T>: TableKeyValue {
    public var value: T
    public var hasError: Bool
    public var isRequired: Bool
    public var equalKey: String?
    
    public init(type: TableViewRowType, key:String, value: T, hasError: Bool, isRequired: Bool, equalKey: String?) {
        self.value = value
        self.hasError = hasError
        self.isRequired = isRequired
        self.equalKey = equalKey
        super.init(type: type, key: key)
    }
    
    init(type: TableViewRowType, key:String, value: T, isRequired: Bool, equalKey: String?) {
        self.value = value
        self.hasError = false
        self.isRequired = isRequired
        self.equalKey = equalKey
        super.init(type: type, key: key)
    }
    
    init(type: TableViewRowType, key:String, value: T, isRequired: Bool) {
        self.value = value
        self.hasError = false
        self.isRequired = isRequired
        self.equalKey = nil
        super.init(type: type, key: key)
        
    }
    
    init(type: TableViewRowType, key:String, value: T) {
        self.value = value
        self.hasError = false
        self.isRequired = false
        self.equalKey = nil
        super.init(type: type, key: key)
    }
    
}
