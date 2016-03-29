//
//  YJTextFiled.m
//  UITextFiled
//
//  Created by hyj on 16/3/29.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "YJTextFiled.h"

@implementation YJTextFiled



-(void)drawPlaceholderInRect:(CGRect)rect{
  
    UIColor *placeholderColor = [UIColor grayColor];//设置颜色
    [placeholderColor setFill];

    
    CGSize titleSize=[self textSize:self.placeholder size:self.font];
    CGFloat x;
    if(titleSize.width>self.bounds.size.width){
    
       x= 0;
    }else{
       x= rect.size.width-titleSize.width-5;//右边留5像素
    }
    
    CGFloat y= (rect.size.height- self.font.pointSize)/2;
    CGFloat width= titleSize.width;
    CGFloat height=self.font.pointSize;
    
    CGRect placeholderRect = CGRectMake(x, y, width, height);//设置距离
    
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineBreakMode = NSLineBreakByTruncatingTail;
    style.alignment = self.textAlignment;
    NSDictionary *attr = [NSDictionary dictionaryWithObjectsAndKeys:style,NSParagraphStyleAttributeName, self.font, NSFontAttributeName, placeholderColor, NSForegroundColorAttributeName, nil];
    
    [self.placeholder drawInRect:placeholderRect withAttributes:attr];


}

////动态计算Label的宽
-(CGSize)textSize:(NSString*)str size:(UIFont *)font
{
    NSDictionary *attributes = @{NSFontAttributeName:font};
    CGSize textSize = [str boundingRectWithSize:CGSizeMake(MAXFLOAT, 30) options:NSStringDrawingTruncatesLastVisibleLine attributes:attributes context:nil].size;
    return textSize;
}
//-(CGRect)clearButtonRectForBounds:(CGRect)bounds
//{
//    return CGRectMake(bounds.origin.x + bounds.size.width - 50, bounds.origin.y + bounds.size.height -20, 16, 16);
//}

////控制placeHolder的位置，左右缩20
//-(CGRect)placeholderRectForBounds:(CGRect)bounds
//{
//    
//    //return CGRectInset(bounds, 20, 0);
//    CGRect inset = CGRectMake(self.bounds.size.width-bounds.size.width, bounds.origin.y, bounds.size.width, bounds.size.height);//更好理解些
//    return inset;
//}
////控制显示文本的位置
//-(CGRect)textRectForBounds:(CGRect)bounds
//{
//    //return CGRectInset(bounds, 50, 0);
//    CGRect inset = CGRectMake(bounds.origin.x+190, bounds.origin.y, bounds.size.width -10, bounds.size.height);//更好理解些
//    
//    return inset;
//    
//}
////控制编辑文本的位置
//-(CGRect)editingRectForBounds:(CGRect)bounds
//{
//    //return CGRectInset( bounds, 10 , 0 );
//    
//    CGRect inset = CGRectMake(bounds.origin.x +10, bounds.origin.y, bounds.size.width -10, bounds.size.height);
//    return inset;
//}
////控制左视图位置
//- (CGRect)leftViewRectForBounds:(CGRect)bounds
//{
//    CGRect inset = CGRectMake(bounds.origin.x +10, bounds.origin.y, bounds.size.width-250, bounds.size.height);
//    return inset;
//    //return CGRectInset(bounds,50,0);
//}




@end
