//
//  UIImageExtension.swift
//  SendProtest
//
//  Created by Matteo Corradin on 29/05/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

public extension UIImage
{
    func letterboxImage() -> UIImage
    {
        let width = self.size.width
        let height = self.size.height
        
        // no letterboxing needed, already a square
        if(width == height)
        {
            return self
        }
        
        // find the larger side
        let squareSize = max(width, height)
        
        UIGraphicsBeginImageContext(CGSize(width: squareSize, height: squareSize))
        
        // draw black background
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        context!.fill(CGRect(x: 0, y: 0, width: squareSize, height: squareSize))
        
        // draw image in the middle
        self.draw(in: CGRect(x: (squareSize-width) / 2, y: (squareSize - height) / 2, width: width, height: height))
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}

public extension UIImage {
    
    func correctlyOrientedImage() -> UIImage {
        if self.imageOrientation == UIImage.Orientation.up {
            return self
        }
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        self.draw(in: CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height))
        let normalizedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        
        return normalizedImage;
    }
}

public extension UIImage{
    class func generateThumbnail(url: URL) -> UIImage? {
        do {
            let asset = AVURLAsset(url: url)
            let imageGenerator = AVAssetImageGenerator(asset: asset)
            imageGenerator.appliesPreferredTrackTransform = true
            let cgImage = try imageGenerator.copyCGImage(at: CMTime.zero, actualTime: nil)
            
            return UIImage(cgImage: cgImage)
        } catch {
            print(error.localizedDescription)
            
            return nil
        }
    }
}
