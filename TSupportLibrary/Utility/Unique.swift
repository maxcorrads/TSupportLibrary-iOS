//
//  Unique.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 30/01/19.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import Foundation
public func uniq<S : Sequence, T : Hashable>(source: S) -> [T] where S.Iterator.Element == T {
    var buffer = [T]()
    var added = Set<T>()
    for elem in source {
        if !added.contains(elem) {
            buffer.append(elem)
            added.insert(elem)
        }
    }
    return buffer
}
