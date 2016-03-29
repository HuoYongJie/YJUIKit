//
//  YJTextView.h
//  UITextFiled
//
//  Created by hyj on 16/3/29.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YJTextView : UITextView
@property (copy,  nonatomic) NSString *placeholder;
@property (strong,nonatomic) UIColor *placeholderColor;
@property (strong,nonatomic) UIFont *placeholderFont;
@end
