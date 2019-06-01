//
//  AbstractTableElementViewController.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 28/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

open class AbstractTableElementViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    public var dataArray = Array<TableGenericElement>()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.clear
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBOutlet public var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if dataArray.count > indexPath.row{
            let v = dataArray[indexPath.row]
            return HomeAdapter.heightForRowAt(tableView, indexPath, v)
        }
        return UITableView.automaticDimension
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if dataArray.count > indexPath.row{
            let v = dataArray[indexPath.row]
            return HomeAdapter.cellForRowAt(tableView, indexPath, v, self)
        }else{
            return UITableViewCell()
        }
    }
    
    public var cellHeights: [IndexPath : CGFloat] = [:]
    
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cellHeights[indexPath] = cell.frame.size.height
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeights[indexPath] ?? 44
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let prod = dataArray[indexPath.row]
        
        if(prod.canBeExpanded)
        {
            if(prod.isExpanded){
                self.collapseCellsFromIndexOf(prod, indexPath: indexPath, tableView: tableView)
            }
            else{
                self.expandCellsFromIndexOf(prod, indexPath: indexPath, tableView: tableView)
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    public func collapseCellsFromIndexOf(_ prod:TableGenericElement,indexPath:IndexPath,tableView:UITableView)->Void{
        
        // Find the number of childrens opened under the parent recursively as there can be expanded children also
        let collapseCol = self.numberOfCellsToBeCollapsed(prod)
        // Find the end index by adding the count to start index+1
        let end = indexPath.row + 1 + collapseCol
        // Find the range from the parent index and the length to be removed.
        let collapseRange =  ((indexPath.row+1) ..< end)
        // Remove all the objects in that range from the main array so that number of rows are maintained properly
        dataArray.removeSubrange(collapseRange)
        prod.isExpanded = false
        // Create index paths for the number of rows to be removed
        var indexPaths = [IndexPath]()
        for i in 0..<collapseRange.count {
            indexPaths.append(IndexPath.init(row: collapseRange.lowerBound+i, section: 0))
        }
        // Animate and delete
        tableView.deleteRows(at: indexPaths, with: .right)
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    public func expandCellsFromIndexOf(_ prod:TableGenericElement,indexPath:IndexPath,tableView:UITableView)->Void{
        
        // Create dummy children
        // self.fetchChildrenforParent(prod)
        
        
        // Expand only if children are available
        if prod.children != nil {
            prod.isExpanded = true
            if(prod.children!.count>0)
            {
                var i = 0;
                // Insert all the child to the main array just after the parent
                for prodData in prod.children! {
                    dataArray.insert(prodData, at: indexPath.row+i+1)
                    i += 1;
                }
                // Find the range for insertion
                let expandedRange = NSMakeRange(indexPath.row, i)
                
                var indexPaths = [IndexPath]()
                // Create index paths for the range
                for i in 0..<expandedRange.length {
                    indexPaths.append(IndexPath.init(row: expandedRange.location+i+1, section: 0))
                }
                // Insert the rows
                tableView.insertRows(at: indexPaths, with: .left)
                //tableView.reloadRows(at: [indexPath], with: .none)
            }
            tableView.reloadRows(at: [indexPath], with: .none)
        }
    }
    
    public func numberOfCellsToBeCollapsed(_ prod:TableGenericElement)->Int{
        
        var total = 0
        
        if(prod.isExpanded)
        {
            // Set the expanded status to no
            prod.isExpanded = false
            let child = prod.children
            if child != nil {
                total = child!.count
            }else{
                total = 0
            }
            
            // traverse through all the children of the parent and get the count.
            if child != nil {
                for prodData in child!{
                    total += self.numberOfCellsToBeCollapsed(prodData)
                }
            }
        }
        return total
    }
    
}
