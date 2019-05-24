//
//  TableElementWithValueTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class TableElementWithValueTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation1() {
        let key = "key"
        let value = "test"
        let type = "BUTTON"
        let element = TableElementWithValue<String>(type: type, key: key, value: value)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, false)
        XCTAssertNil(element.equalKey)
    }
    
    func testCreation2() {
        let key = "key1"
        let value = "test1"
        let type = "IMAGE"
        let element = TableElementWithValue<String>(type: type, key: key, value: value)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, false)
        XCTAssertNil(element.equalKey)
    }
    
    func testCreation3() {
        let key = "key1"
        let value = "test1"
        let type = "IMAGE"
        let hasError = false
        let isRequired = false
        let equalKey = "testEq1"
        let element = TableElementWithValue<String>(type: type, key: key, value: value, hasError: hasError, isRequired: isRequired, equalKey: equalKey)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, hasError)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertEqual(element.equalKey, equalKey)
    }
    
    func testCreation4() {
        let key = "key2"
        let value = "test2"
        let type = "BUTTON"
        let hasError = true
        let isRequired = true
        let equalKey = "testEq2"
        let element = TableElementWithValue<String>(type: type, key: key, value: value, hasError: hasError, isRequired: isRequired, equalKey: equalKey)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, hasError)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertEqual(element.equalKey, equalKey)
    }
    
    func testCreation5() {
        let key = "key2"
        let value = "test2"
        let type = "BUTTON"
        let isRequired = true
        let element = TableElementWithValue<String>(type: type, key: key, value: value, isRequired: isRequired)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertNil(element.equalKey)
    }
    
    func testCreation6() {
        let key = "key22"
        let value = "test11"
        let type = "IMAGE"
        let isRequired = false
        let element = TableElementWithValue<String>(type: type, key: key, value: value, isRequired: isRequired)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertNil(element.equalKey)
    }
    
    func testCreation7() {
        let key = "key22"
        let value = "test11"
        let type = "IMAGE"
        let isRequired = false
        let equalKey = "testEq2"
        let element = TableElementWithValue<String>(type: type, key: key, value: value, isRequired: isRequired, equalKey: equalKey)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertEqual(element.equalKey, equalKey)
    }
    
    func testCreation8() {
        let key = "key2s2"
        let value = "test11s"
        let type = "BUTTON"
        let isRequired = true
        let equalKey = "testEq22"
        let element = TableElementWithValue<String>(type: type, key: key, value: value, isRequired: isRequired, equalKey: equalKey)
        XCTAssertEqual(element.type, type)
        XCTAssertEqual(element.key, key)
        XCTAssertEqual(element.value, value)
        XCTAssertEqual(element.hasError, false)
        XCTAssertEqual(element.isRequired, isRequired)
        XCTAssertEqual(element.equalKey, equalKey)
    }
    
}
