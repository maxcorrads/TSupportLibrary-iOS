//
//  ArrayExtension.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    func equalContents(to other: [Element]) -> Bool {
        guard self.count == other.count else {return false}
        for e in self{
            guard (self.filter{$0==e}.count == other.filter{$0==e}.count) else {
                return false
            }
        }
        return true
    }
}
