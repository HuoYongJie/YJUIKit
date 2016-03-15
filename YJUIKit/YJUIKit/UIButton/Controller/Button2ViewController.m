//
//  Button2ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/14.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "Button2ViewController.h"
#import "UIButton+EdgeInsets.h"

#define kScreenHeight [[UIScreen mainScreen] bounds].size.height      //屏幕高度
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width      //屏幕宽度
@interface Button2ViewController ()

@end

@implementation Button2ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    for (int i = 0; i<4; i++)
    {
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        button1.frame = CGRectMake(60, 80 +i*90, kScreenWidth-60*2, 80);
        button1.tag = i;
        button1.backgroundColor = [UIColor yellowColor];
        button1.titleLabel.font = [UIFont systemFontOfSize:15];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"newOrder_message"] forState:UIControlStateNormal];
        [button1 setTitle:@"测试文本" forState:UIControlStateNormal];
        [button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
        
        switch (i)
        {
            case 0:
            {
                [button1 layoutButtonWithEdgeInsetsStyle:ButtonEdgeInsetsStyleImageTop imageTitlespace:20];
               
            }
                break;
                
            case 1:
            {
          
              [button1 layoutButtonWithEdgeInsetsStyle:ButtonEdgeInsetsStyleImageBottom imageTitlespace:10];
            }
                break;
                
            case 2:
            {
            [button1 layoutButtonWithEdgeInsetsStyle:ButtonEdgeInsetsStyleImageLeft imageTitlespace:50];
            }
                break;
                
            case 3:
            {
              [button1 layoutButtonWithEdgeInsetsStyle:ButtonEdgeInsetsStyleImageRight imageTitlespace:40];
            }
                break;
                
          
                
            default:
                break;
        }
    }
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
