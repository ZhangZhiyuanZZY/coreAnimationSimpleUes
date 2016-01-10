//
//  ViewController.m
//  核心动画简单实用
//
//  Created by 章芝源 on 16/1/10.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置    UI
    [self setupUI];
}

- (void)setupUI
{
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:redView];
    
    CABasicAnimation *baseAnim = [[CABasicAnimation alloc]init];
//    baseAnim.keyPath = @"position";

   //    NSValue *value = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
//    baseAnim.toValue = value;
//    //下面2句代码让动画执行完之后,  动画停留在最后执行到的地方
//    baseAnim.removedOnCompletion = NO;
//    baseAnim.fillMode = kCAFillModeForwards;
//    NSLog(@"%@", redView);
    
    //设置layer的哪个属性进行动画动作
     baseAnim.keyPath = @"transform.scale";
     baseAnim.toValue = @0.5;
     baseAnim.repeatCount = MAXFLOAT;

    [redView.layer addAnimation:baseAnim forKey:nil];
}

@end
