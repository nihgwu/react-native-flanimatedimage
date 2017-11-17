//
//  RNFLAnimatedImageManager.m
//  RNFLAnimatedImage
//
//  Created by Neo on 16/9/13.
//  Copyright © 2016 Neo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTUIManager.h>
#import <React/UIView+React.h>

#import "RNFLAnimatedImageManager.h"
#import "RNFLAnimatedImage.h"

@implementation RNFLAnimatedImageManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
  RNFLAnimatedImage *animatedImage = [RNFLAnimatedImage new];
  return animatedImage;
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);
RCT_EXPORT_VIEW_PROPERTY(contentMode, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(onFrameChange, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onLoadEnd, RCTDirectEventBlock)

- (NSDictionary *) constantsToExport {
  return @{
           @"ScaleAspectFit": @(UIViewContentModeScaleAspectFit),
           @"ScaleAspectFill": @(UIViewContentModeScaleAspectFill),
           @"ScaleToFill": @(UIViewContentModeScaleToFill)
           };
}

@end
