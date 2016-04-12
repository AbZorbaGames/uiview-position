//
//  ViewController.swift
//  UIViewPositionSwift
//
//  Created by Georges Boumis on 12/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var redView : UIView! = nil
    private var greenView : UIView! = nil
    private var blueView : UIView! = nil


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let origin = CGPoint.zero
        let size = CGSizeMake(100, 100)
        let frame = CGRect(origin: origin, size: size)
        redView = UIView(frame: frame)
        blueView = UIView(frame: frame)
        greenView = UIView(frame: frame)

        redView.backgroundColor = UIColor.redColor()
        blueView.backgroundColor = UIColor.blueColor()
        greenView.backgroundColor = UIColor.greenColor()

        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        self.view.addSubview(greenView)
    }

    override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()

        redView.frameRightCenter   = self.view.ownRightCenter
        blueView.frameRightCenter  = redView.frameBottomLeft
        greenView.frameBottomRight = redView.frameTopCenter

        redView.floorFrame()
        blueView.floorFrame()
        greenView.floorFrame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

