//
//  CGSizeRounding.swift
//  UIViewPosition
//
//  Created by Georges Boumis on 12/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

import CoreGraphics

extension CGSize {
    /// returns a new point with floored width and height of the receiver
    public var flooredSize : CGSize {
        var size = self
        return size.floor()
    }


    /// floors width and height and returns self
    public mutating func floor() -> CGSize {
        self.width  = CoreGraphics.floor(self.width)
        self.height = CoreGraphics.floor(self.height)
        return self
    }

    /// returns a new point with floored width and height of the receiver
    public var ceiledSize : CGSize {
        var size = self
        return size.ceil()
    }

    /// ceils width and height and returns self
    public mutating func ceil() -> CGSize {
        self.width  = CoreGraphics.ceil(self.width)
        self.height = CoreGraphics.ceil(self.height)
        return self
    }
}
