//
//  UIView+Utils.swift
//  DYWUtils
//
//  Created by Jean-Louis Danielo on 11/02/2016.
//  Copyright © 2016 Jean-Louis Danielo. All rights reserved.
//

import UIKit

extension UIView {
    /**
     getLayerByName
     
     - parameter layerName: name of the layer to seek
     
     - returns: Optionnal CALayer
     */
    func getLayerByName(layerName layerName: String) -> CALayer? {
        if let layers = self.layer.sublayers {
            for layer: CALayer in layers {
                if let tempLayerName = layer.name where tempLayerName == layerName {
                    return layer;
                } else {
                    continue;
                }
            }
        }
        return nil; // View has no layers
    }
    
    
    /**
     Get the CGRect of the most bottom view of a view
     
     - returns: CGRect
     */
    func bottomestUIView() -> CGRect {
        // Contains the frames of all elements in mainScrollView
        let selfSubviewsFrames = (self.subviews as NSArray).valueForKeyPath("frame") as! NSArray;
        
        let maxYValues:[CGFloat] = selfSubviewsFrames.map({ rect -> CGFloat in
            let maxY = (rect.CGRectValue).maxY;
            return maxY;
        });
        
        let frames:[CGRect] = selfSubviewsFrames.map({ rect -> CGRect in
            let aRect = (rect.CGRectValue);
            return aRect;
        }).filter({
            let aRect = $0;
            return aRect.maxY == maxYValues.maxElement()!
        })
        
        return frames[0];
    }
    
    /**
     Get the CGRect of the most top view of a view
     
     - returns: CGRect
     */
    
    func topestUIView()->CGRect
    {
        // Contains the frames of all elements in mainScrollView
        let subviewsFrames = (self.subviews as NSArray).valueForKeyPath("frame") as! NSArray;
        
        // Map to get only the minY of the frames
        let minYValues:[CGFloat] = subviewsFrames.map({ rect -> CGFloat in
            let minY = (rect.CGRectValue).minY;
            
            return minY;
        });
        
        let frames:[CGRect] = subviewsFrames.map({ rect -> CGRect in
            let aRect = (rect.CGRectValue);
            
            return aRect;
        }).filter({
            let aRect = $0;
            
            return aRect.minY == minYValues.minElement()!
        });
        
        return frames[0];
    }
}

