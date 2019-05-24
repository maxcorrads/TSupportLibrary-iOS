//
//  TappableViewContainerComponentTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
import UIKit
@testable import TSupportLibrary

class TappableViewContainerComponentTest: XCTestCase {
    
    var component: TappableViewContainerComponent?
    
    override func setUp() {
        super.setUp()
        component = TappableViewContainerComponent(frame: CGRect.zero)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation() {
        XCTAssertNotNil(component)
    }
    
    func testCreation2() {
        XCTAssertTrue(component!.tappableViews.count == 0)
    }
    
    func testAddTappableView() {
        let count = component!.tappableViews.count
        let view = TappableViewComponent(frame: CGRect.zero)
        component!.addTappableView(view)
        XCTAssertTrue(component!.tappableViews.count == count + 1)
    }
    
    func testAddSameTappableViewTwoTimes() {
        let count = component!.tappableViews.count
        let view = TappableViewComponent(frame: CGRect.zero)
        component!.addTappableView(view)
        component!.addTappableView(view)
        XCTAssertTrue(component!.tappableViews.count == count + 1)
    }
    
}
