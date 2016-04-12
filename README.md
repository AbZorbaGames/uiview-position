# uiview-position

[![CI Status](http://img.shields.io/travis/AbZorbaGames/uiview-position.svg?style=flat)](https://travis-ci.org/AbZorbaGames/uiview-position)
[![Version](https://img.shields.io/cocoapods/v/uiview-position.svg?style=flat)](http://cocoapods.org/pods/uiview-position)
[![License](https://img.shields.io/cocoapods/l/uiview-position.svg?style=flat)](http://cocoapods.org/pods/uiview-position)
[![Platform](https://img.shields.io/cocoapods/p/uiview-position.svg?style=flat)](http://cocoapods.org/pods/uiview-position)

##Usage
Quickly compute positions for UIViews.

Do you often write code like this?:

```
// position view so that its right edge equals the superviews right edge and the bottom right corner of that view to be the same as its superview
view.frame = CGRectMake(CGRectGetMaxY(superview.frame) - CGRectGetWidth(view.frame),
                            CGRectGetMaxY(superview.frame) - CGRectGetHeight(view.frame),
                            CGRectGetWidth(view.frame),
                            CGRectGetHeight(view.frame));
```
Wouldn't it be simpler if you wrote JUST this:

```
view.frameBottomRight = superview.ownBottomRight;
This category provides a convenient way to position your UIViews using any corner or edge of the coordinate system.
```
###Examples
```
// position redView so that its right edge == self.view right edge and the center.y == self.view.center.y
redView.frameRightCenter = self.view.ownRightCenter;
```
```
// position blueView so that its right edge equals redView's left edge and the center.y equals with redView's bottom
blueView.frameRightCenter = _redView.frameBottomLeft;
```
```
// position greenView so that its bottom edge equals redView's top edge and the right edge equals with redView's center.x
greenView.frameBottomRight = _redView.frameTopCenter;
```
```
// move a view down 5 points
view.frameTop += 5;
//view.frameBottom += 5;
```

## Installation

There are two ways to use uiview-position in your project:

- using CocoaPods
- copying all the files into your project

###Installation with CocoaPods

CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the Get Started section for more details.

#### Podfile

```  
pod 'uiview-position'
```
### Quick start

Just add UIView+Position.h and UIView+Position.m to your project. Import UIView+Position.h and start using the extensions.

```
#import "UIView+Position.h"
```

## Author

AbZorbaGames, ios@abzorbagames.com

## License

uiview-position is available under the MIT license. See the LICENSE file for more info.
