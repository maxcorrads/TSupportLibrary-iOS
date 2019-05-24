//
//  UIImageExtensionTest.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 31/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import XCTest
import UIKit
@testable import TSupportLibrary

class UIImageExtensionTest: XCTestCase {
    
    let imageColor = UIImage(color: UIColor.blue)

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUp() {
        let image :UIImage = UIImage(cgImage: imageColor!.cgImage!, scale: 1.0, orientation: UIImage.Orientation.up)
        XCTAssertTrue(image.correctlyOrientedImage().imageOrientation == UIImage.Orientation.up)
    }
    
    func testDown() {
        let image :UIImage = UIImage(cgImage: imageColor!.cgImage!, scale: 1.0, orientation: UIImage.Orientation.down)
        XCTAssertTrue(image.correctlyOrientedImage().imageOrientation == UIImage.Orientation.up)
    }
    
    func testLeft() {
        let image :UIImage = UIImage(cgImage: imageColor!.cgImage!, scale: 1.0, orientation: UIImage.Orientation.left)
        XCTAssertTrue(image.correctlyOrientedImage().imageOrientation == UIImage.Orientation.up)
    }
    
    func testRight() {
        let image :UIImage = UIImage(cgImage: imageColor!.cgImage!, scale: 1.0, orientation: UIImage.Orientation.right)
        XCTAssertTrue(image.correctlyOrientedImage().imageOrientation == UIImage.Orientation.up)
    }
    
}

extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}

extension UIImage {
    
    func isEqualToImage(image: UIImage) -> Bool {
        let data1: NSData = self.pngData()! as NSData
        let data2: NSData = image.pngData()! as NSData
        return data1.isEqual(data2)
    }
    
}
