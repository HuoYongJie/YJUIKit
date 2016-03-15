//
//  Button1ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/14.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "Button1ViewController.h"
#import "UIButton+ImageAndTitle.h"
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height      //屏幕高度
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width      //屏幕宽度
@interface Button1ViewController ()

@end

@implementation Button1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    for (int i = 0; i< 6; i++)
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
                [button1 verticalCenterTitleAndImage:20.0f];
                //系统默认图片在左，文字在右，间隔为0
            }
                break;
                
            case 1:
            {
                //上下居中，图片在上，文字在下
                [button1 verticalCenterImageAndTitle:20.0f];
            }
                break;
                
            case 2:
            {
                //左右居中，文字在左，图片在右
                [button1 horizontalCenterTitleAndImage:60.0f];
            }
                break;
                
            case 3:
            {
                //左右居中，图片在左，文字在右
                [button1 horizontalCenterImageAndTitle:10.0f];
            }
                break;
                
            case 4:
            {
                //文字居中，图片在左边
                [button1 horizontalCenterTitleAndImageLeft:40.0f];
            }
                break;
                
            case 5:
            {
                //文字居中，图片在右边
                [button1 horizontalCenterTitleAndImageRight:10.0f];
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


    // Do any additional setup after loading the view.


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
