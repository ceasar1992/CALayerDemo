//
//  HSP_CALayer_Application.m
//  HSP_CALayer
//
//  Created by HDHaoShaoPeng on 2018/1/29.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "HSP_CALayer_Application.h"

@interface HSP_CALayer_Application ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation HSP_CALayer_Application

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    //设置边框宽度 往UIView内部走
//    self.imageV.layer.borderWidth = 2.0;
//    //设置边框的颜色
//    self.imageV.layer.borderColor = [UIColor blueColor].CGColor;
//
//    //设置阴影
//    //设置阴影的不透明度
//    //说明UIView是有阴影效果的，只不过是透明
//    self.imageV.layer.shadowOpacity = 1;
//    //设置阴影偏移量
//    self.imageV.layer.shadowOffset = CGSizeMake(-10, -10);
//    //设置阴影模糊度
//    self.imageV.layer.shadowRadius = 10;
//    //设置阴影的颜色
//    self.imageV.layer.shadowColor = [UIColor orangeColor].CGColor;
//
//    //设置圆角半径
//    self.imageV.layer.cornerRadius = 50.0;
//    //超过根层以外的东西，都被裁剪掉
//    self.imageV.layer.masksToBounds = YES;
//    NSLog(@"%@",self.imageV.layer.contents);
    
    
    
    
    
    
//    //让CAReplicatorLayer添加到UIView上面才能管理UIView
//    CAReplicatorLayer *repl = (CAReplicatorLayer *)self.view.layer;
//    repl.instanceCount = 2;
//    repl.instanceTransform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
//
//    //形成倒影效果
//    repl.instanceRedOffset -= 0.1;
//    repl.instanceGreenOffset -= 0.1;
//    repl.instanceBlueOffset -= 0.1;
//    repl.instanceRedOffset -= 0.1;
    
    
    
    
    //粒子效果
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
