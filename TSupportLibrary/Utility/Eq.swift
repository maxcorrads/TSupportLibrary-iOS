//
//  EqObject.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation


public protocol EqProtocol {
    func isEqual(to object: Any?) -> Bool
    
}

open class Eq: Equatable, EqProtocol {
    
    public static func == (lhs: Eq, rhs: Eq) -> Bool {
        return lhs.isEqual(to:rhs)
    }
    
    open func isEqual(to object: Any?) -> Bool {
        if let other = object as? Eq{
            return self === other
        }
        return false
    }
    
}
