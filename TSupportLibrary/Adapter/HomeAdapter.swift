//
//  HomeAdapter.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 28/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

open class HomeAdapter {
    static func cellForRowAt(_ tableView: UITableView, _ indexPath: IndexPath, _ value: TableGenericElement, _ vc: UIViewController) -> UITableViewCell{
        tableView.register(UINib(nibName: value.element.getReuseId(), bundle:nil), forCellReuseIdentifier: value.element.getReuseId())
        let cell = tableView.dequeueReusableCell(withIdentifier: value.element.getReuseId(), for: indexPath) as! AppGCell
        cell.populate(tableView, value.element, value.action, indexPath, vc)
        return cell
    }
    
    static func heightForRowAt(_ tableView: UITableView, _ indexPath: IndexPath, _ value: TableGenericElement) -> CGFloat{
        return value.element.getHeight()
    }
    
}
