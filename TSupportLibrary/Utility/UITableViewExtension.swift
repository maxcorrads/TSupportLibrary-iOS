//
//  UITableViewExtension.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 06/06/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

public extension UITableView {
    
    func nextResponder(index: Int){
        var currIndex = -1
        for i in index+1..<index+100{
            if let view = self.superview?.superview?.viewWithTag(i){
                view.becomeFirstResponder()
                currIndex = i
                break
            }
        }
        
        let ind = IndexPath(row: currIndex - 100, section: 0)
        if let nextCell = self.cellForRow(at: ind){
            self.scrollRectToVisible(nextCell.frame, animated: true)
        }
    }
    
    func keyboardRaised(height: CGFloat){
        self.contentInset.bottom = height
        self.scrollIndicatorInsets.bottom = height
    }
    
    func keyboardClosed(){
        self.contentInset.bottom = 0
        self.scrollIndicatorInsets.bottom = 0
        self.scrollRectToVisible(CGRect.zero, animated: true)
    }
    
}
