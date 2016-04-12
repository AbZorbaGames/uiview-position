//
//  CGRectRounding.swift
//  UIViewPosition
//
//  Created by Georges Boumis on 12/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

import CoreGraphics

extension CGRect {
    /// creates a CGRect with the specified center and size
    public init(center: CGPoint, size : CGSize) {
        let x = center.x - (size.width * 0.5)
        let y = center.y - (size.height * 0.5)
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    //
    // Creating CGRect with unusual points
    //

    //
    // using the middle of the sides
    public init(rightCenter : CGPoint, size : CGSize) {
        let x = rightCenter.x - size.width
        let y = rightCenter.y - (size.height * 0.5)
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    public init(leftCenter : CGPoint, size : CGSize) {
        let x = leftCenter.x
        let y = leftCenter.y - (size.height * 0.5)
        let origin = CGPoint(x: x, y: y);
        self.init(origin: origin, size: size)
    }

    public init(topCenter : CGPoint, size : CGSize) {
        let x = topCenter.x - (size.width * 0.5)
        let y = topCenter.y
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    public init(bottomCenter : CGPoint, size : CGSize) {
        let x = bottomCenter.x - (size.width * 0.5)
        let y = bottomCenter.y - size.height
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    //
    // using corners
    public init(topRight : CGPoint, size : CGSize) {
        let x = topRight.x - size.width
        let y = topRight.y
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    public init(topLeft : CGPoint, size : CGSize) {
        self.init(origin: topLeft, size: size)
    }

    public init(bottomLeft : CGPoint, size : CGSize) {
        let x = bottomLeft.x
        let y = bottomLeft.y - size.height
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }

    public init(bottomRight : CGPoint, size : CGSize) {
        let x = bottomRight.x - size.width
        let y = bottomRight.y - size.height
        let origin = CGPoint(x: x, y: y)
        self.init(origin: origin, size: size)
    }


    /// returns a new point with floored x and y of the receiver
    public var flooredRect : CGRect {
        var rect = self
        return rect.floor()
    }


    /// floors x and y and returns self
    public mutating func floor() -> CGRect {
        self.origin = self.origin.flooredPoint
        self.size   = self.size.flooredSize
        return self
    }

    /// returns a new point with floored x and y of the receiver
    public var ceiledRect : CGRect {
        var rect = self
        return rect.ceil()
    }

    /// ceils x and y and returns self
    public mutating func ceil() -> CGRect {
        self.origin = self.origin.ceiledPoint
        self.size   = self.size.ceiledSize
        return self
    }

    public var centerX : CGFloat {
        return CGRectGetMidX(self)
    }

    public var centerY : CGFloat {
        return CGRectGetMidY(self)
    }

    public var center : CGPoint {
        get {
            return CGPoint(x: self.centerX, y: self.centerY)
        }
        set {
            let xDiff = self.centerX - newValue.x
            let yDiff = self.centerY - newValue.y
            self.origin.x += xDiff
            self.origin.y += yDiff
        }
    }

    public var top : CGFloat {
        get {
            return CGRectGetMinY(self)
        }
        set {
            self.origin.y = newValue
        }
    }

    public var bottom : CGFloat {
        get {
            return CGRectGetMaxY(self)
        }
        set {
            self.origin.y = newValue - self.size.height
        }
    }

    public var left : CGFloat {
        get {
            return CGRectGetMinX(self)
        }
        set {
            self.origin.x = newValue
        }
    }

    public var right : CGFloat {
        get {
            return CGRectGetMaxX(self)
        }
        set {
            self.origin.x = newValue - self.size.width
        }
    }


    /* Getting CGPoint from CGRect */
    public var topLeft : CGPoint {
        return CGPoint(x: self.left, y: self.top)
    }

    public var topRight : CGPoint {
        return CGPoint(x: self.right, y: self.top)
    }

    public var bottomLeft : CGPoint {
        return CGPoint(x: self.left, y: self.bottom)
    }

    public var bottomRight : CGPoint {
        return CGPoint(x: self.right, y: self.bottom)
    }

    public var topCenter : CGPoint {
        return CGPoint(x: self.centerX, y: self.top)
    }

    public var bottomCenter : CGPoint {
        return CGPoint(x: self.centerX, y: self.bottom)
    }

    public var leftCenter : CGPoint {
        return CGPoint(x: self.left, y: self.centerY)
    }

    public var rightCenter : CGPoint {
        return CGPoint(x: self.right, y: self.centerY)
    }


    public mutating func translate(dx dx: CGFloat, dy: CGFloat) -> CGRect {
        self.origin.translate(dx : dx, dy: dy)
        return self
    }

    public func translatedBy(dx dx : CGFloat, dy : CGFloat) -> CGRect {
        var rect = self;
        return rect.translate(dx: dx, dy: dy)
    }
}
