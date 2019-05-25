//
//  TappableLabelComponentTest.swift
//  TSupportLibraryTests
//
//  Created by Matteo Corradin on 25/05/2019.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import XCTest
import UIKit
@testable import TSupportLibrary

class TappableLabelComponentTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMakeViewTappableAddGesture() {
        let view: TappableLabelComponent = TappableLabelComponent(frame: CGRect.zero)
        view.makeViewTappable(view: view)
        XCTAssertTrue(view.gestureRecognizers!.count == 1)
    }
    
    func testMakeViewTappableAddGesture2() {
        let view: TappableLabelComponent = TappableLabelComponent(frame: CGRect.zero)
        view.makeTappable()
        XCTAssertTrue(view.gestureRecognizers!.count == 1)
    }
    
    func testMakeViewTappableAddGesture3() {
        let view: TappableLabelComponent = TappableLabelComponent(frame: CGRect.zero)
        view.makeTappable()
        XCTAssertEqual(view.gestureRecognizers!.first, view.tapGesture)
    }
    
    func testMakeViewTappableAddGesture4() {
        let view: TappableLabelComponent = TappableLabelComponent(frame: CGRect.zero)
        let gr = UIGestureRecognizer(target: nil, action: nil)
        view.addGestureRecognizer(gr)
        if let grs = view.gestureRecognizers{
            XCTAssertTrue(grs.count == 1)
        }
        view.makeTappable()
        XCTAssertTrue(view.gestureRecognizers!.count == 2)
    }
    
    func testMakeViewTappableAddGesture5() {
        let view: TappableLabelComponent = TappableLabelComponent(frame: CGRect.zero)
        let gr = UIGestureRecognizer(target: nil, action: nil)
        view.addGestureRecognizer(gr)
        if let grs = view.gestureRecognizers{
            XCTAssertTrue(grs.count == 1)
        }
        view.makeTappable()
        XCTAssertTrue(view.gestureRecognizers!.count == 2)
        view.makeTappable()
        XCTAssertTrue(view.gestureRecognizers!.count == 2)
    }
    
}
