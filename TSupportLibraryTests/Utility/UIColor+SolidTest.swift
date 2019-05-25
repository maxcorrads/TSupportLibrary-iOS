//
//  UIColor+SolidTest.swift
//  TSupportLibraryTests
//
//  Created by Matteo Corradin on 25/05/2019.
//  Copyright © 2019 Matteo Corradin. All rights reserved.
//

import XCTest
@testable import TSupportLibrary

class UIColor_SolidTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSolid(){
        let solid = UIColor.red.image()
        XCTAssertTrue(solid.size.equalTo(CGSize(width: 1, height: 1)))
    }
    
    func testSolid2(){
        let solid = UIColor.red.image(CGSize(width: 2, height: 2))
        XCTAssertTrue(solid.size.equalTo(CGSize(width: 2, height: 2)))
    }
    
    func testSolid3(){
        let solid = UIColor.red.image(CGSize(width: 10, height: 10))
        XCTAssertTrue(solid.size.equalTo(CGSize(width: 10, height: 10)))
    }
    
    func testSolid4(){
        let solid = UIColor.red.image()
        XCTAssertEqual(getPixelColor(cgImage: solid.cgImage!, size: solid.size, pos: CGPoint(x: 0, y: 0)), UIColor.red)
    }
    
    func testSolid5(){
        let solid = UIColor.blue.image()
        XCTAssertNotEqual(getPixelColor(cgImage: solid.cgImage!, size: solid.size, pos: CGPoint(x: 0, y: 0)), UIColor.red)
    }
    func testSolid6(){
        let solid = UIColor.blue.image()
        XCTAssertEqual(getPixelColor(cgImage: solid.cgImage!, size: solid.size, pos: CGPoint(x: 0, y: 0)), UIColor.blue)
    }
    
    func getPixelColor(cgImage: CGImage, size:CGSize, pos: CGPoint) -> UIColor {
        
        let pixelData = cgImage.dataProvider!.data!
        let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        
        let pixelInfo: Int = ((Int(size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
}
