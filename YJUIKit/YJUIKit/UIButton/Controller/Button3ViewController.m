//
//  Button3ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/15.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "Button3ViewController.h"
#import "UIButton+touch.h"
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height      //屏幕高度
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width      //屏幕
@interface Button3ViewController ()

@end

@implementation Button3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
  
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        button1.frame = CGRectMake(60, 80 +90, kScreenWidth-60*2, 80);
        button1.backgroundColor = [UIColor yellowColor];
        button1.titleLabel.font = [UIFont systemFontOfSize:15];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button1.timeInterval=10;
    
    [button1 setTitle:[NSString stringWithFormat:@"设置点击间隔时间：%.2f",button1.timeInterval] forState:UIControlStateNormal];
        [button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
        [button1 setImage:[UIImage imageNamed:@"newOrder_message"] forState:UIControlStateNormal];
            
}

- (void)testAction:(UIButton *)sender
{
    NSLog(@"testAction:%ld", (long)sender.tag);
    
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
