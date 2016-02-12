//
//  CALayer+Utils.swift
//  SamApp
//
//  Created by Jean-Louis Danielo on 22/11/2015.
//  Copyright © 2015 Jean-Louis Danielo. All rights reserved.
//

import UIKit

extension CALayer {
    func borderUIColor() -> UIColor? {
        return borderColor != nil ? UIColor(CGColor: borderColor!) : nil
    }
    
    func setBorderUIColor(color: UIColor) {
        borderColor = color.CGColor
    }
}


extension CATextLayer {
    /**
     @fitFrame
     
     - parameter font: UIFont object, font applied to the CATextLayer object
     
     - returns: CGRect object
     */
    func fitFrame(font font: UIFont) -> CGRect {
        let tempLabel = UILabel();
        tempLabel.font = font;
        tempLabel.text = String(self.string);
        tempLabel.sizeToFit();
        
        return tempLabel.frame;
    }
}