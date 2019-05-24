//
//  EqObjectTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class EqTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEquivalence1() {
        let element = Eq()
        XCTAssertFalse(element.isEqual(to: nil))
    }
    
    func testEquivalence2() {
        let element = Eq()
        let element2 = Eq()
        XCTAssertFalse(element.isEqual(to: element2))
    }
    
    func testEquivalence3() {
        let element = Eq()
        XCTAssertTrue(element.isEqual(to: element))
    }
    
}
