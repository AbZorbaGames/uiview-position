//
//  CGPointRounding.swift
//  UIViewPosition
//
//  Created by Georges Boumis on 12/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

import CoreGraphics

extension CGPoint {

    /// returns a new point with floored x and y of the receiver
    public var flooredPoint : CGPoint {
        var point = self
        return point.floor()
    }


    /// floors x and y and returns self
    public mutating func floor() -> CGPoint {
        self.x = CoreGraphics.floor(self.x)
        self.y = CoreGraphics.floor(self.y)
        return self
    }

    /// returns a new point with floored x and y of the receiver
    public var ceiledPoint : CGPoint {
        var point = self
        return point.ceil()
    }

    /// ceils x and y and returns self
    public mutating func ceil() -> CGPoint {
        self.x = CoreGraphics.ceil(self.x)
        self.y = CoreGraphics.ceil(self.y)
        return self
    }

    public mutating func translate(dx dx : CGFloat, dy : CGFloat) -> CGPoint {
        self.x += dx;
        self.y += dy;
        return self
    }

    public func translatedBy(dx dx : CGFloat, dy : CGFloat) -> CGPoint {
        var point = self;
        return point.translate(dx: dx, dy: dy)
    }
}