//
//  RNFLAnimatedImage.h
//  RNFLAnimatedImage
//
//  Created by Neo on 16/9/13.
//  Copyright © 2016 Neo. All rights reserved.
//

#import <React/RCTView.h>
#import "FLAnimatedImage.h"

@class RNFLAnimatedImage;

@interface RNFLAnimatedImage : UIView

@property (nonatomic, copy) NSString *src;
@property (nonatomic, assign) NSNumber *contentMode;

@property (nonatomic, copy) RCTDirectEventBlock onFrameChange;
@property (nonatomic, copy) RCTDirectEventBlock onLoadEnd;

@end
