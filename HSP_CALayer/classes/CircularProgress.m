//
//  CircularProgress.m
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/26.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "CircularProgress.h"
#import <UIKit/UIKit.h>
@interface CircularProgress()<CALayerDelegate>

@end
@implementation CircularProgress
@dynamic arcLenght;
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super init]) {
        [self setupLayers:frame];
    }
    return self;
}

- (void)setupLayers:(CGRect)frame{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(frame.size.width/2, frame.size.height/2) radius:50 startAngle:0 endAngle:2*M_PI clockwise:NO];
    
    self.path = path.CGPath;
    self.fillColor = [UIColor clearColor].CGColor;
    self.strokeColor = [UIColor greenColor].CGColor;
    self.lineWidth = 3;
    self.delegate = self;
    self.strokeStart = 0;
    self.strokeEnd = 0;
}

- (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)event{
    CircularProgressAction *action = nil;
    if ([event isEqualToString:@"arcLenght"]) {
        action = [[CircularProgressAction alloc] init];
        action.oldValue = self.arcLenght;
    }
    return action;
}

- (id<CAAction>)actionForKey:(NSString *)event{
    return [super actionForKey:event];
}

@end






@implementation CircularProgressAction

- (void)runActionForKey:(NSString *)event object:(id)anObject arguments:(NSDictionary *)dict{
    CircularProgress *layer = anObject;
    CABasicAnimation * animation=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration=3;
    animation.fromValue=[NSNumber numberWithFloat:self.oldValue/100.0];
    animation.toValue=[NSNumber numberWithFloat:[[layer valueForKey:event] floatValue]/100.0];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    [layer addAnimation:animation forKey:@"strokeEnd"];
}
@end


