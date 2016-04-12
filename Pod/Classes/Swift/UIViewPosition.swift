//
//  UIViewPosition.swift
//  UIViewPosition
//
//  Created by AbZorba Games on 12/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

import UIKit


/*
 With the following methods you can obtain and set nearly any corner or edge of
 a UIView both in the superview's coordinate system (frame, center) either on the
 view's coordinate system (bounds, own*).

 *----------*----------*
 |                     |
 |                     |
 *          *          *
 |                     |
 |                     |
 *----------*----------*

 You can obtain and set any '*' point in the above figure either as a CGPoint
 either independently as a CGFloat value.

 */

extension UIView {
    //
    // Superview's coordinate system
    //

    /// The frame origin as in self.frame.origin (superview's coordinate system)
    public var frameOrigin : CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var frame    = self.frame
            frame.origin = newValue
            self.frame   = frame
        }
    }

    /// The frame center.x (superview's coordinate system)
    public var centerX : CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center = CGPoint(x: newValue, y: self.centerY)
        }
    }
    /// The frame center.y (superview's coordinate system)
    public var centerY : CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center = CGPoint(x: self.centerX, y: newValue)
        }
    }

    /// x of frame's origin (superview's coordinate system)
    public var frameX : CGFloat {
        get {
            return CGRectGetMinX(self.frame)
        }
        set {
            var frame      = self.frame
            frame.origin.x = newValue
            self.frame     = frame
        }
    }
    /// y of frame's origin (superview's coordinate system)
    public var frameY : CGFloat {
        get {
            return CGRectGetMinY(self.frame)
        }
        set {
            var frame      = self.frame
            frame.origin.y = newValue
            self.frame     = frame
        }
    }

    //
    // Edges
    //

    /// The left edge of the frame (superview's coordinate system)
    public var frameLeft : CGFloat {
        get {
            return self.frameX
        }
        set {
            self.frameX = newValue
        }
    }
    /// The top edge of the frame (superview's coordinate system)
    public var frameTop : CGFloat {
        get {
            return self.frameY
        }
        set {
            self.frameY = newValue
        }
    }
    /// The right edge of the frame (superview's coordinate system)
    public var frameRight : CGFloat {
        get {
            return CGRectGetMaxX(self.frame)
        }
        set {
            var frame      = self.frame
            frame.origin.x = newValue - self.frameWidth
            self.frame     = frame
        }
    }
    /// The bottom edge of the frame (superview's coordinate system)
    public var frameBottom : CGFloat {
        get {
            return CGRectGetMaxY(self.frame)
        }
        set {
            var frame      = self.frame
            frame.origin.y = newValue - self.frameHeight
            self.frame     = frame
        }
    }

    //
    // Corners
    //

    /// The top left corner of the frame (superview's coordinate system)
    public var frameTopLeft : CGPoint {
        get {
            return self.frameOrigin
        }
        set {
            self.frameOrigin = newValue
        }
    }
    /// The top right corner of the frame (superview's coordinate system)
    public var frameTopRight : CGPoint {
        get {
            return CGPoint(x: self.frameRight, y: self.frameTop)
        }
        set {
            self.frameTop   = newValue.y
            self.frameRight = newValue.x
        }
    }
    /// The bottom left corner of the frame (superview's coordinate system)
    public var frameBottomLeft : CGPoint {
        get {
            return CGPoint(x: self.frameLeft, y: self.frameBottom)
        }
        set {
            self.frameBottom = newValue.y
            self.frameLeft   = newValue.x
        }
    }
    /// The bottom right corner of the frame (superview's coordinate system)
    public var frameBottomRight : CGPoint {
        get {
            return CGPoint(x: self.frameRight, y: self.frameBottom)
        }
        set {
            self.frameBottom = newValue.y
            self.frameRight  = newValue.x
        }
    }

    //
    // Middle of Edges
    //

    /// The top center virtual point of the frame (superview's coordinate system)
    public var frameTopCenter : CGPoint {
        get {
            return CGPoint(x: self.centerX, y: self.frameTop)
        }
        set {
            self.frameTop = newValue.y
            self.centerX  = newValue.x
        }
    }
    /// The bottom center virtual point of the frame (superview's coordinate system)
    public var frameBottomCenter : CGPoint {
        get {
            return CGPoint(x: self.centerX, y: self.frameBottom)
        }
        set {
            self.frameBottom = newValue.y
            self.centerX     = newValue.x
        }
    }

    /// The left center virtual point of the frame (superview's coordinate system)
    public var frameLeftCenter : CGPoint {
        get {
            return CGPoint(x: self.frameLeft, y: self.centerY)
        }
        set {
            self.frameLeft = newValue.x
            self.centerY   = newValue.y
        }
    }
    /// The right center virtual point of the frame (superview's coordinate system)
    public var frameRightCenter : CGPoint {
        get {
            return CGPoint(x: self.frameRight, y: self.centerY)
        }
        set {
            self.frameRight = newValue.x
            self.centerY    = newValue.y
        }
    }

    //
    // Sizes
    //

    /// The frame size as in self.frame.size
    public var frameSize : CGSize {
        get {
            return self.frame.size
        }
        set {
            var frame      = self.frame
            frame.size     = newValue
            self.frame     = frame
        }
    }
    /// The frame width (takes into account the current transformations)
    public var frameWidth : CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame        = self.frame
            frame.size.width = newValue
            self.frame       = frame
        }
    }
    /// The frame height (takes into account the current transformations)
    public var frameHeight : CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame         = self.frame
            frame.size.height = newValue
            self.frame        = frame
        }
    }

    //
    // View's coordinate system
    //

    /// The bounds width (in the view's coordinate system, not taking into account any transformations)
    public var boundsWidth : CGFloat {
        get {
            return self.bounds.width
        }
        set {
            var bounds        = self.bounds
            bounds.size.width = newValue
            self.bounds       = bounds
        }
    }
    /// The bounds height (in the view's coordinate system, not taking into account any transformations)
    public var boundsHeight : CGFloat {
        get {
            return self.bounds.height
        }
        set {
            var bounds         = self.bounds
            bounds.size.height = newValue
            self.bounds        = bounds
        }
    }
    /// The bounds size (in the view's coordinate system, not taking into account any transformations)
    public var boundsSize : CGSize {
        get {
            return self.bounds.size
        }
        set {
            var bounds  = self.bounds
            bounds.size = newValue
            self.bounds = bounds
        }
    }

    /// The bounds center (in the view's coordinate system) @warning you nearly never want to set this
    public var ownCenter : CGPoint {
        get {
            return CGPoint(x: self.ownCenterX, y: self.ownCenterY)
        }
        set {
            var bounds = self.bounds
            let xDiff = self.ownCenterX - newValue.x
            let yDiff = self.ownCenterY - newValue.y
            bounds.origin.x += xDiff
            bounds.origin.y += yDiff
            self.bounds = bounds
        }
    }
    /// x of bounds center (in the view's coordinate system) @warning you nearly never want to set this
    public var ownCenterX : CGFloat {
        get {
            return CGRectGetMidX(self.bounds)
        }
        set {
            self.ownCenter = CGPointMake(newValue, self.ownCenterY);
        }
    }
    /// y of bounds center (in the view's coordinate system) @warning you nearly never want to set this
    public var ownCenterY : CGFloat {
        get {
            return CGRectGetMidY(self.bounds)
        }
        set {
            self.ownCenter = CGPointMake(self.ownCenterY, newValue);
        }
    }

    /// The bounds origin as in self.bounds.origin (view's coordinate system) @warning you nearly never want to set this
    public var ownOrigin : CGPoint {
        get {
            return self.bounds.origin
        }
        set {
            var bounds    = self.bounds
            bounds.origin = newValue
            self.bounds   = bounds
        }
    }

    /// The left edge of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownLeft : CGFloat {
        get {
            return CGRectGetMinX(self.bounds)
        }
        set {
            var bounds      = self.bounds
            bounds.origin.x = newValue
            self.bounds     = bounds
        }
    }
    /// The right edge of the bounds (in the view's coordinate system)
    public var ownRight : CGFloat {
        get {
            return CGRectGetMaxX(self.bounds)
        }
        set {
            var bounds        = self.bounds
            bounds.origin.x   = newValue - self.boundsWidth
            self.bounds       = bounds
        }
    }
    /// The top edge of the bounds (in the view's coordinate system) @warning you nearly never want to set this
    public var ownTop : CGFloat {
        get {
            return CGRectGetMinY(self.bounds)
        }
        set {
            var bounds        = self.bounds
            bounds.origin.y   = newValue
            self.bounds       = bounds
        }
    }
    /// The bottom edge of the bounds (in the view's coordinate system)
    public var ownBottom : CGFloat {
        get {
            return CGRectGetMaxY(self.bounds)
        }
        set {
            var bounds        = self.bounds
            bounds.origin.y   = newValue - self.boundsHeight
            self.bounds       = bounds
        }
    }

    /// The top left corner of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownTopLeft : CGPoint {
        get {
            return self.ownOrigin
        }
        set {
            self.ownOrigin = newValue
        }
    }
    /// The top right corner of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownTopRight : CGPoint {
        get {
            return CGPoint(x: self.ownRight, y: self.ownTop)
        }
        set {
            self.ownTop   = newValue.y
            self.ownRight = newValue.x
        }
    }
    /// The bottom left corner of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownBottomLeft : CGPoint {
        get {
            return CGPoint(x: self.ownLeft, y: self.ownBottom)
        }
        set {
            self.ownBottom = newValue.y
            self.ownLeft   = newValue.x
        }
    }
    /// The bottom right corner of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownBottomRight : CGPoint {
        get {
            return CGPoint(x: self.ownRight, y: self.ownBottom)
        }
        set {
            self.ownBottom = newValue.y
            self.ownRight  = newValue.x
        }
    }

    /// The top center virtual point of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownTopCenter : CGPoint {
        get {
            return CGPoint(x: self.ownCenterX, y: self.ownTop)
        }
        set {
            self.ownTop     = newValue.y
            self.ownCenterX = newValue.x
        }
    }
    /// The bottom center virtual point of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownBottomCenter : CGPoint {
        get {
            return CGPoint(x: self.ownCenterX, y: self.ownBottom)
        }
        set {
            self.ownBottom  = newValue.y
            self.ownCenterX = newValue.x
        }
    }

    /// The left center virtual point of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownLeftCenter : CGPoint {
        get {
            return CGPoint(x: self.ownLeft, y: self.ownCenterY)
        }
        set {
            self.ownLeft    = newValue.x
            self.ownCenterY = newValue.y
        }
    }
    /// The right center virtual point of the bounds (in the view's coordinate system)  @warning you nearly never want to set this
    public var ownRightCenter : CGPoint {
        get {
            return CGPoint(x: self.ownRight, y: self.ownCenterY)
        }
        set {
            self.ownRight   = newValue.x
            self.ownCenterY = newValue.y
        }
    }



    /// The frame of the view that has origin.x, origin.y, size.width and size.height floor()ed
    public var flooredFrame : CGRect {
        return self.frame.flooredRect
    }
    /// The frame of the view that has origin.x, origin.y, size.width and size.height ceil()ed
    public var ceiledFrame : CGRect {
        return self.frame.ceiledRect
    }

    /// The size of the view that has its width and height floor()ed
    public var flooredFrameSize : CGSize {
        return self.frameSize.flooredSize
    }
    /// The size of the view that has its width and height ceiled()ed
    public var ceiledFrameSize : CGSize {
        return self.frameSize.ceiledSize
    }

    /// The origin of the view that has its x and y floor()ed
    public var flooredFrameOrigin : CGPoint {
        return self.frameOrigin.flooredPoint
    }
    /// The origin of the view that has its x and y ceil()ed
    public var ceiledFrameOrigin : CGPoint {
        return self.frameOrigin.ceiledPoint
    }


    // 
    // Mutating Actions
    //

    public func floorFrame() -> UIView {
        self.frame.floor();
        return self
    }

    public func ceilFrame() -> UIView {
        self.frame.ceil();
        return self
    }


    public func floorFrameOrigin() -> UIView {
        self.frameOrigin.floor();
        return self
    }

    public func ceilFrameOrigin() -> UIView {
        self.frameOrigin.ceil();
        return self
    }

    public func floorFrameSize() -> UIView {
        self.frameSize.floor();
        return self
    }

    public func ceilFrameSize() -> UIView {
        self.frameSize.ceil();
        return self
    }
}
