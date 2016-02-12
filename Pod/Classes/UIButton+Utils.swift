//
//  UIButton+Utils.swift
//  Pods
//
//  Created by Jean-Louis Danielo on 12/02/2016.
//
//

import UIKit

extension UIButton {
    
    func imageWithColor(color: UIColor) -> UIImage {
        let rect: CGRect = CGRectMake(0.0, 0.0, 1.0, 1.0)
        UIGraphicsBeginImageContext(rect.size)
        
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}

