//
//  CircularProgress.h
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/26.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CircularProgress : CAShapeLayer
//1~100
@property (assign, nonatomic) float arcLenght;
- (instancetype)initWithFrame:(CGRect)frame;
@end

@interface CircularProgressAction : NSObject<CAAction>
@property (assign , nonatomic) float oldValue;
@end


