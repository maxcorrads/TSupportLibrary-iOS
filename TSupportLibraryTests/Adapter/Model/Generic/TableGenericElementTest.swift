//
//  TableGenericElementTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class TableGenericElementTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation1() {
        let tableValue = TableValue(type: "BUTTON")
        let canBeExpanded = false
        let isExpanded = false
        let children: Array<TableGenericElement>? = nil
        let action: ((UIViewController) -> Void)? = nil
        let element = TableGenericElement(element: tableValue, canBeExpanded: canBeExpanded, isExpanded: isExpanded, children: children, action: action)
        XCTAssertEqual(element.element, tableValue)
        XCTAssertEqual(element.canBeExpanded, canBeExpanded)
        XCTAssertEqual(element.isExpanded, isExpanded)
        XCTAssertNil(element.children)
        XCTAssertNil(element.action)
    }
    
    func testCreation2() {
        let tableValue = TableValue(type: "IMAGE")
        let canBeExpanded = true
        let isExpanded = true
        let children: Array<TableGenericElement>? = []
        let action: ((UIViewController) -> Void)? = { vc in
            
        }
        let element = TableGenericElement(element: tableValue, canBeExpanded: canBeExpanded, isExpanded: isExpanded, children: children, action: action)
        XCTAssertEqual(element.element, tableValue)
        XCTAssertEqual(element.canBeExpanded, canBeExpanded)
        XCTAssertEqual(element.isExpanded, isExpanded)
        XCTAssertNotNil(element.children)
        XCTAssertNotNil(element.action)
        if let eC = element.children {
            XCTAssertTrue(eC.equalContents(to: children!))
        }
    }
    
    func testCreation3() {
        let tableValue = TableValue(type: "IMAGE")
        let canBeExpanded = false
        let isExpanded = false
        let children: Array<TableGenericElement>? = nil
        let action: ((UIViewController) -> Void)? = { vc in
            
        }
        let element = TableGenericElement(element: tableValue, action: action)
        XCTAssertEqual(element.element, tableValue)
        XCTAssertEqual(element.canBeExpanded, canBeExpanded)
        XCTAssertEqual(element.isExpanded, isExpanded)
        XCTAssertEqual(element.children, children)
        XCTAssertNotNil(element.action)
    }
    
    func testCreation4() {
        let tableValue = TableValue(type: "BUTTON")
        let canBeExpanded = false
        let isExpanded = false
        let children: Array<TableGenericElement>? = nil
        let action: ((UIViewController) -> Void)? = nil
        let element = TableGenericElement(element: tableValue, action: action)
        XCTAssertEqual(element.element, tableValue)
        XCTAssertEqual(element.canBeExpanded, canBeExpanded)
        XCTAssertEqual(element.isExpanded, isExpanded)
        XCTAssertEqual(element.children, children)
        XCTAssertNil(element.action)
    }

    
}
