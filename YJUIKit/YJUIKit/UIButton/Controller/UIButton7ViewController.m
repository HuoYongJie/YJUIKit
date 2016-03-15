//
//  UIButton7ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/15.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "UIButton7ViewController.h"
#import "FWGridView.h"
@interface UIButton7ViewController ()<FWGridViewDelegate>

@property (nonatomic, strong) FWGridView *gridView;
@property (nonatomic, assign) NSInteger column;

@end

@implementation UIButton7ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.gridView];
    self.gridView.gridViewDelegate = self;
    self.column=3;
    self.gridView.numOfColumns = self.column;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - FWGridViewDelegate

- (CGFloat) gridView:(FWGridView *)grid widthForColumnAt:(NSInteger)columnIndex
{
    //    if (columnIndex == 0) {
    //        return 160;
    //    }
    //
    //    if (columnIndex % 2 == 0) {
    //        return 60;
    //    }
    return (self.view.frame.size.width-(self.column-1)*1)/self.column;
}
- (CGFloat)gridView:(FWGridView *)grid heightForRowAt:(NSInteger)rowIndex
{
    return 80;
}

- (NSInteger)numberOfCellsOfGridView:(FWGridView *) grid
{
    return 10;
}
- (FWGridViewCell *) gridView:(FWGridView *)grid cellForGridIndex:(FWGridViewIndex *)gridIndex
{
    FWGridViewCell *cell = [grid dequeueReusableCell];
    
    if (!cell) {
        cell = [[FWGridViewCell alloc] initWithCellStyle:FWGridViewCellStyleTitle];
    }
    
    if (gridIndex.columnIndex==0) {
        cell.thumbnail.image = [UIImage imageNamed:@"wechat"];
    }else{
        cell.thumbnail.image = [UIImage imageNamed:@"timerBtn_imageView_highlighted@2x.png"];
    }
    //    cell.thumbnail.highlightedImage = [UIImage imageNamed:@"txweibo"];
    cell.label.text = @"微信朋友圈";
    cell.selectedBackgroundView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.25];
    
    return cell;
}

/*
 *行间距，获取当前行与上一行的间距：竖向间距 default:0
 */
- (CGFloat)gridView:(FWGridView *)grid spaceForRowAt:(NSInteger)rowIndex
{
    if (rowIndex==0) {
        return 0;
    }
    
    return 1;
}
/*
 *列间距，每个网格cell之间的间距：横向间距 default:0
 */
- (CGFloat) gridView:(FWGridView *)grid spaceForCellGridIndex:(FWGridViewIndex *)gridIndex
{
    if (gridIndex.columnIndex==0) {
        return 0;
    }
    return 1;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self.gridView reloadData];
    
}
- (CGFloat) gridView:(FWGridView *)grid titleHeightForCellGridIndex:(FWGridViewIndex *)gridIndex{
    return 20;
    
}
-(void)gridView:(FWGridView *)grid didSelectCell:(FWGridViewCell *)cell{
    
    NSLog(@"%ld", (long)cell.gridIndex.rowIndex);
}
#pragma mark-Life Cycle
#pragma mark-UITableViewDelegate
#pragma mark-CustomDelegate
#pragma mark-eventReponse
#pragma mark-privateMethods
#pragma mark-GettersAndSetters
-(FWGridView *)gridView{

    if (_gridView==nil) {
        _gridView=[[FWGridView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];

        _gridView.tableFooterView=[[UIView alloc]init];
        
    }
    
    return _gridView;
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
