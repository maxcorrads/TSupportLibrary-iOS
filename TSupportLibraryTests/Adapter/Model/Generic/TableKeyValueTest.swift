//
//  TableKeyValueTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class TableKeyValueTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation() {
        let type = "BUTTON"
        let key = "key"
        let element = TableKeyValue(type: type, key: key)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.type, type)
    }
    
    func testCreation1() {
        let type = "IMAGE"
        let key = "key1"
        let element = TableKeyValue(type: type, key: key)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.type, type)
    }
    
    func testEquivalence() {
        let type = "IMAGE"
        let key = "key"
        let element = TableKeyValue(type: type, key: key)
        
        let type1 = "IMAGE"
        let key1 = "key"
        let element1 = TableKeyValue(type: type1, key: key1)
        
        XCTAssertEqual(element, element1)
    }
    
    func testEquivalence1() {
        let type = "IMAGE"
        let key = "key1"
        let element = TableKeyValue(type: type, key: key)
        
        let type1 = "BUTTON"
        let key1 = "key1"
        let element1 = TableKeyValue(type: type1, key: key1)
        
        XCTAssertNotEqual(element, element1)
    }
    
    func testEquivalence2() {
        let type = "IMAGE"
        let key = "key12"
        let element = TableKeyValue(type: type, key: key)
        
        let type1 = "IMAGE"
        let key1 = "key1"
        let element1 = TableKeyValue(type: type1, key: key1)
        
        XCTAssertNotEqual(element, element1)
    }
    
    func testEquivalence3() {
        let type = "IMAGE"
        let key = "key12"
        let element = TableKeyValue(type: type, key: key)
        
        XCTAssertFalse(element.isEqual(to: nil))
    }
    
}
