//
//  UIColor+EquivalenceTest.swift
//  TSupportLibraryTests
//
//  Created by Matteo Corradin on 25/05/2019.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class UIColor_EquivalenceTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEquivalence() {
        let color1 = UIColor.red
        let color2 = UIColor.red
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 0))
    }
    
    func testNot() {
        let color1 = UIColor.red
        let color2 = UIColor.blue
        XCTAssertFalse(color1.isEqualToColor(color: color2, withTolerance: 0))
    }

    
    func testTollerance() {
        let color1 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 1))
    }
    
    func testTollerance2() {
        let color1 = UIColor(red: 0.1, green: 0, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 0.1))
    }
    
    func testTollerance3() {
        let color1 = UIColor(red: 0.1, green: 0, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertFalse(color1.isEqualToColor(color: color2, withTolerance: 0))
    }
    
    func testTollerance4() {
        let color1 = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 1))
    }
    
    func testTollerance5() {
        let color1 = UIColor(red: 0, green: 0.1, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 0.1))
    }
    
    func testTollerance6() {
        let color1 = UIColor(red: 0, green: 0.1, blue: 0, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertFalse(color1.isEqualToColor(color: color2, withTolerance: 0))
    }
    
    func testTollerance7() {
        let color1 = UIColor(red: 0, green:01, blue: 1, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 1))
    }
    
    func testTollerance8() {
        let color1 = UIColor(red: 0, green: 0, blue: 0.1, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertTrue(color1.isEqualToColor(color: color2, withTolerance: 0.1))
    }
    
    func testTollerance9() {
        let color1 = UIColor(red: 0, green: 0, blue: 0.1, alpha: 1)
        let color2 = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        XCTAssertFalse(color1.isEqualToColor(color: color2, withTolerance: 0))
    }

}
