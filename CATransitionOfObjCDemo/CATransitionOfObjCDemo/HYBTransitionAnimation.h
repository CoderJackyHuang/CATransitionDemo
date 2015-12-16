//
//  HYBTransitionAnimation.h
//  CATransitionOfObjCDemo
//
//  Created by huangyibiao on 15/12/14.
//  Copyright © 2015年 huangyibiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HYBTransitionType) {
  kHYBTransitionFade = 1,     // 淡入淡出
  kHYBTransitionPush,         // 推进效果
  kHYBTransitionReveal,       // 揭开效果
  kHYBTransitionMoveIn,       // 慢慢进入并覆盖效果
  kHYBTransitionCube,         // 立体翻转效果
  kHYBTransitionSuckEffect,   // 像被吸入瓶子的效果
  kHYBTransitionRippleEffect, // 波纹效果
  kHYBTransitionPageCurl,     // 翻页效果
  kHYBTransitionPageUnCurl,   // 反翻页效果
  kHYBTransitionCameraOpen,   // 开镜头效果
  kHYBTransitionCameraClose,  // 关镜头效果
  kHYBTransitionCurlDown,     // 下翻页效果
  kHYBTransitionCurlUp,       // 上翻页效果
  kHYBTransitionFlipFromLeft, // 左翻转效果
  kHYBTransitionFlipFromRight,// 右翻转效果
  kHYBTransitionOglFlip       // 翻转
};

typedef NS_ENUM(NSUInteger, HYBTransitionSubtype) {
  kHYBTransitionSubtypeFromLeft = 1,  // 从左边进入
  kHYBTransitionSubtypeFromRight,     // 从右边进入
  kHYBTransitionSubtypeFromTop,       // 从顶部进入
  kHYBTransitionSubtypeFromBottom     // 从底部进入
};

@interface HYBTransitionAnimation : NSObject

+ (void)transitionForView:(UIView *)aView
                               type:(HYBTransitionType)type
                            subtype:(HYBTransitionSubtype)subtype
                           duration:(NSTimeInterval)duration;

@end
