//
//  NSString+Height.h
//  CARSMobileOA
//
//  Created by hyj on 16/11/10.
//  Copyright © 2016年 railway. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Height)

- (CGFloat)widthForFont:(UIFont *)font;
- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width;
@end
