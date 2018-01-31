//
//  ViewController.m
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/26.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "ViewController.h"
#import "CustomAction.h"
#import "CircularProgress.h"
#import "UIColor+HexColor.h"

@interface ViewController ()<CALayerDelegate>

@end

@implementation ViewController
{
    CALayer *anchorLayer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    anchorLayer = [[CALayer alloc]init];
    [self.view.layer addSublayer:anchorLayer];
    anchorLayer.backgroundColor = [UIColor orangeColor].CGColor;
    anchorLayer.bounds = CGRectMake(0, 0, 100, 100);
    anchorLayer.position = CGPointMake(100, 100);
    anchorLayer.anchorPoint = CGPointMake(1, 0.5);//测试anchorPoint 的作用。
    NSLog(@"%@",NSStringFromCGPoint(anchorLayer.anchorPoint));
    anchorLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"layerImage"].CGImage);
    [self performSelector:@selector(animationMethod) withObject:nil afterDelay:2.0];//改变属性查看隐式动画
    
    
//    anchorLayer.delegate = self;//设置代理 通过返回遵循CAAction代理的action类来控制隐式动画。
    
    //隐式动画应用的示例
//    NSArray * colors = @[(id)[[UIColor colorWithHexColorString:@"#FF6347" andAlpha:1.0] CGColor],
//                         (id)[[UIColor colorWithHexColorString:@"#FFEC8B" andAlpha:1.0] CGColor],
//                         (id)[[UIColor colorWithHexColorString:@"#98FB98" andAlpha:1.0] CGColor],
//                         (id)[[UIColor colorWithHexColorString:@"#00B2EE" andAlpha:1.0] CGColor],
//                         (id)[[UIColor colorWithHexColorString:@"#9400D3" andAlpha:1.0] CGColor]];
//    NSArray * locations = @[@0.1,@0.3,@0.5,@0.7,@1];
//
//    CAGradientLayer *gradientLayer = [CAGradientLayer new];
//    gradientLayer.frame = CGRectMake(100, 100, 200, 200);
//    gradientLayer.colors = colors;
//    gradientLayer.locations = locations;
//    gradientLayer.startPoint = CGPointMake(0, 0);
//    gradientLayer.endPoint = CGPointMake(1, 0);
//    [self.view.layer addSublayer:gradientLayer];
//
//    CircularProgress *circularProgress = [[CircularProgress alloc] initWithFrame:gradientLayer.bounds];
//    gradientLayer.mask = circularProgress;
//    [self performSelector:@selector(doRightButtonAction:) withObject:circularProgress afterDelay:2.0];//改变属性查看隐式动画
}

- (void)doRightButtonAction:(CircularProgress*)circularProgress
{
    circularProgress.arcLenght = 50;
}

- (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)event{
    
//    if ([event isEqualToString:@"backgroundColor"]) {
//        CABasicAnimation *animation = [CABasicAnimation animation];
//        animation.duration = 3.0f;
//        [layer addAnimation:animation forKey:@"backgroundColor"];
//        return animation;
//    }
//    return nil;
    
    
//    if ([event isEqualToString:@"backgroundColor"]) {
//        CustomAction *action = [CustomAction new];
//        return action;
//    }
    return nil;
    
}


-(void)animationMethod
{
    anchorLayer.position = CGPointMake(200, 100);

    
//    [CATransaction begin];
//    [CATransaction setDisableActions:YES];
//    anchorLayer.position = CGPointMake(200, 100);
//    [CATransaction commit];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
