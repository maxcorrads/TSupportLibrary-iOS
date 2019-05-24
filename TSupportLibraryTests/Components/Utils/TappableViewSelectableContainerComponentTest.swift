//
//  TappableViewSelectableContainerComponentTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 16/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
import UIKit
@testable import TSupportLibrary

class TappableViewSelectableContainerComponentTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreation() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        XCTAssertNil(component.selected)
    }
    
    func testSelected() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        component.selected = 5
        XCTAssertNil(component.selected)
    }
    
    func testSelected2() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        XCTAssertEqual(component.selected, 0)
    }
    
    func testSelected3() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        component.selected = 5
        XCTAssertEqual(component.selected, 0)
    }
    
    func testSelected4() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        component.selected = nil
        XCTAssertEqual(component.selected, 0)
    }
    
    func testSelected5() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        component.addTappableView(view)
        component.selected = 1
        XCTAssertEqual(component.selected, 1)
    }
    
    func testSelected6() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        component.addTappableView(view)
        component.selected = 1
        component.addTappableView(view)
        XCTAssertEqual(component.selected, 1)
    }
    
    func testObserver() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        var called = false
        let view = TappableViewComponent(frame: CGRect.zero)
        component.addTappableView(view)
        component.addTappableView(view)
        component.selectedCallback = { (value) -> Void in
            XCTAssertEqual(value, 1)
            called = true
        }
        component.selected = 1
        XCTAssertTrue(called)
    }
    
    func testObserver2() {
        let component = TappableViewSelectableContainerComponent(frame: CGRect.zero)
        let view = TappableViewComponent(frame: CGRect.zero)
        var called = false
        component.selectedCallback = { (value) -> Void in
            XCTAssertEqual(value, 0)
            called = true
        }
        component.addTappableView(view)
        XCTAssertTrue(called)
    }
    
}
