//
//  CustomAction.h
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/26.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "CustomLayer.h"
#import <UIKit/UIKit.h>

@interface CustomAction : NSObject<CAAction>
@property (nonatomic) CGColorRef currentColor;
@end
