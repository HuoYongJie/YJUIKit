//
//  Button4ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/15.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "Button4ViewController.h"

@interface Button4ViewController ()<UIGestureRecognizerDelegate>
{
    UIButton            *_button;
    NSMutableArray      *_array;
    UIImageView         *_image;
    BOOL                 _record;
}
@end

@implementation Button4ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _array = [[NSMutableArray alloc]initWithCapacity:0];
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(0, self.view.frame.size.height-50, self.view.frame.size.width, 50);
    _button.backgroundColor = [UIColor grayColor];
    [_button setTitle:@"按住说话" forState:UIControlStateNormal];
    _button.userInteractionEnabled = NO;
    [self.view addSubview:_button];
    
    _image = [[UIImageView alloc]init];
    _image.bounds = CGRectMake(0, 0, 100, 100);
    _image.center = self.view.center;
    [self.view addSubview:_image];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (point.y<self.view.frame.size.height&&point.y>self.view.frame.size.height-50) {
        NSLog(@"----------出现");
        [_array removeAllObjects];
        [_button setTitle:@"松开手指，完成发送" forState:UIControlStateNormal];
        _image.image = [UIImage imageNamed:@"btn_record"];
        _record = YES;
    }else{
        _record = NO;
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (_record == YES) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.view];
        NSString *y = [NSString stringWithFormat:@"%f",point.y];
        [_array addObject:y];
        if (_array.count>15) {
            float y0 = [[_array objectAtIndex:_array.count-15]floatValue];
            if (point.y<y0) {
                [_button setTitle:@"松开手指，取消录音" forState:UIControlStateNormal];
                _image.image = [UIImage imageNamed:@"btn_cancel"];
            }else{
                _image.image = [UIImage imageNamed:@"btn_record_ani_normal"];
                [_button setTitle:@"松开手指，完成录音" forState:UIControlStateNormal];
            }
        }
    }
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    _image.image = nil;
    NSLog(@"---++++___");
    [_button setTitle:@"按住说话" forState:UIControlStateNormal];
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
