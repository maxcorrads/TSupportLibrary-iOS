//
//  TappableViewComponentTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 14/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
import UIKit
@testable import TSupportLibrary

class TappableViewComponentTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMakeViewTappableAddGesture() {
        let view: TappableViewComponent = TappableViewComponent(frame: CGRect.zero)
        if let grs = view.gestureRecognizers{
            XCTAssertTrue(grs.count == 0)
        }
        view.makeViewTappable(view: view)
        XCTAssertTrue(view.gestureRecognizers!.count == 1)
    }
    
    func testMakeViewTappableAddGesture2() {
        let view: TappableViewComponent = TappableViewComponent(frame: CGRect.zero)
        if let grs = view.gestureRecognizers{
            XCTAssertTrue(grs.count == 0)
        }
        view.makeTappable()
        XCTAssertTrue(view.gestureRecognizers!.count == 1)
    }
    
    func testMakeViewTappableAddGesture3() {
        let view: TappableViewComponent = TappableViewComponent(frame: CGRect.zero)
        if let grs = view.gestureRecognizers{
            XCTAssertTrue(grs.count == 0)
        }
        view.makeTappable()
        XCTAssertEqual(view.gestureRecognizers!.first, view.tapGesture)
    }
    
}
