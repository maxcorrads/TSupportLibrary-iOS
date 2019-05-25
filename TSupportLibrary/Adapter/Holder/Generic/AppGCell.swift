//
//  AppGCell.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 29/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

open class AppGCell : UITableViewCell {
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        selectionStyle = .none
    }
    
    func populate(_ tableView: UITableView, _ data: TableValue, _ action: ((UIViewController) -> Void)?, _ indexPath: IndexPath, _ vc: UIViewController) {
        
    }
    
}

