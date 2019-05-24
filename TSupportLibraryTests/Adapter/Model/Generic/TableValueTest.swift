//
//  TableValueTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class TableValueTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation1() {
        let type = "BUTTON"
        let element = TableValue(type: type)
        XCTAssertEqual(element.type, type)
    }
    
    func testCreation2() {
        let type = "FIND_IMAGE"
        let element = TableValue(type: type)
        XCTAssertEqual(element.type, type)
    }
    
    func testEquivalence1() {
        let type = "FIND_IMAGE"
        let element = TableValue(type: type)
        
        let type1 = "BUTTON"
        let element1 = TableValue(type: type1)
        XCTAssertNotEqual(element, element1)
    }
    
    func testEquivalence2() {
        let type = "FIND_IMAGE"
        let element = TableValue(type: type)
        
        XCTAssertNotEqual(element, nil)
    }
    
    func testEquivalence3() {
        let type = "FIND_IMAGE"
        let element = TableValue(type: type)
        
        let type1 = "FIND_IMAGE"
        let element1 = TableValue(type: type1)
        XCTAssertEqual(element, element1)
    }
    
    func testEquivalence4() {
        let type = "FIND_IMAGE"
        let element = TableValue(type: type)
        
        XCTAssertEqual(element, element)
    }
    
}
