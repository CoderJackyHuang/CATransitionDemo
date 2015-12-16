//
//  ViewController.m
//  CATransitionOfObjCDemo
//
//  Created by huangyibiao on 15/12/14.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

#import "ViewController.h"
#import "HYBTransitionAnimation.h"

@interface ViewController ()

@property (nonatomic, assign) int subtype;
@property (nonatomic, strong) NSArray *array;

@property (nonatomic, strong) UIImage *img1;
@property (nonatomic, strong) UIImage *img2;
@property (nonatomic, assign) BOOL isImg1;
@property (nonatomic, assign) NSUInteger index;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.array = @[@(kHYBTransitionFade),
                 @(kHYBTransitionPush),
                 @(kHYBTransitionReveal),
                 @(kHYBTransitionMoveIn),
                 @(kHYBTransitionCube),
                 @(kHYBTransitionSuckEffect),
                 @(kHYBTransitionRippleEffect),
                 @(kHYBTransitionPageCurl),
                 @(kHYBTransitionPageUnCurl),
                 @(kHYBTransitionCameraOpen),
                 @(kHYBTransitionCameraClose),
                 @(kHYBTransitionCurlDown),
                 @(kHYBTransitionCurlUp),
                 @(kHYBTransitionFlipFromLeft),
                 @(kHYBTransitionFlipFromRight),
                 @(kHYBTransitionOglFlip)];
  
  self.img1 = [UIImage imageNamed:@"1.png"];
  self.img2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"]];
  
  self.view.backgroundColor = [UIColor colorWithPatternImage:self.img1];
  self.isImg1 = YES;
  
  [NSTimer scheduledTimerWithTimeInterval:1.0
                                   target:self
                                 selector:@selector(updateAnimation)
                                 userInfo:nil
                                  repeats:YES];
}

- (void)updateAnimation {
  
  if (self.index >= self.array.count) {
    self.index = 0;
  }
  
  HYBTransitionType type = [[self.array objectAtIndex:self.index++] intValue];
  static int s_subtypeValue = 0;
  HYBTransitionSubtype subtype = kHYBTransitionSubtypeFromTop;
  s_subtypeValue++;
  if (s_subtypeValue >= 4) {
    s_subtypeValue = 1;
  }
  
  subtype = (HYBTransitionSubtype)s_subtypeValue;
  
  [HYBTransitionAnimation transitionForView:self.view
                                       type:type
                                    subtype:subtype
                                   duration:1.0];
  
  if (self.isImg1) {
    self.view.backgroundColor = [UIColor colorWithPatternImage:self.img1];
  } else {
    self.view.backgroundColor = [UIColor colorWithPatternImage:self.img2];
  }
  
  self.isImg1 = !self.isImg1;
}

@end
