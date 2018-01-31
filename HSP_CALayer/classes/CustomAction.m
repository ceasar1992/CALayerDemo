//
//  CustomAction.m
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/26.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "CustomAction.h"

@implementation CustomAction
//- (void)runActionForKey:(NSString *)key object:(id)anObject arguments:(NSDictionary *)dict {
//    CALayer *layer = anObject;
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
//    animation.fromValue = (id)[UIColor greenColor].CGColor;
//    animation.toValue = (id)[UIColor redColor].CGColor;
//    animation.duration = 5;
//    [layer addAnimation:animation forKey:@"backgroundColor"];
//}

- (void)runActionForKey:(NSString *)event object:(id)anObject arguments:(NSDictionary *)dict{
    CustomLayer *layer = anObject;
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.duration = 3.0f;
    [layer addAnimation:animation forKey:@"backgroundColor"];
}

@end
