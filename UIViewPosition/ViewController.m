//
//  ViewController.m
//  UIViewPosition
//
//  Created by AbZorba Games on 11/04/2016.
//  Copyright © 2016 AbZorba Games. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Position.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *greenView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _redView   = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _blueView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _greenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];

    _redView.backgroundColor = [UIColor redColor];
    _blueView.backgroundColor = [UIColor blueColor];
    _greenView.backgroundColor = [UIColor greenColor];

    [self.view addSubview:_redView];
    [self.view addSubview:_blueView];
    [self.view addSubview:_greenView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _redView.frameRightCenter = self.view.ownRightCenter;
    _blueView.frameRightCenter = _redView.frameBottomLeft;
    _greenView.frameBottomRight = _redView.frameTopCenter;

    [_redView floorFrame];
    [_blueView floorFrame];
    [_greenView floorFrame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
