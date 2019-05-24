//
//  TableValue.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/09/17.
//  Copyright © 2017 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit

public class TableValue : Eq{
    var type: TableViewRowType
    init(type: TableViewRowType) {
        self.type = type
    }
    
    override public func isEqual(to object: Any?) -> Bool {
        if let other = object as? TableValue {
            return self.type == other.type
        }
        return false
    }
    
    func getReuseId() -> String{
        return type
    }
    
    func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func getSize() -> CGSize? {
        return nil
    }
}
