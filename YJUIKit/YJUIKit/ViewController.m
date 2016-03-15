//
//  ViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/14.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "ViewController.h"
#import "ButtonListViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableview;
@property (nonatomic,strong) NSArray *kitArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.title=@"UIKit";//导航条的题目
    [self.view addSubview:self.tableview];
    
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark-Life Cycle
#pragma mark-UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.kitArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
      static NSString *cellID=@"cellid";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text=[NSString stringWithFormat:@"%@",_kitArray[indexPath.row]];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
        [self.navigationController pushViewController:[[ButtonListViewController alloc]init] animated:YES];
            break;
        }
            
        default:
            break;
    }
  
}
#pragma mark-CustomDelegate
#pragma mark-eventReponse
#pragma mark-privateMethods
#pragma mark-GettersAndSetters


//注：在进行get取方法的时候，方法名要和tableview对照才有效。出现过复制代码但是方法名不同的情况，结果出不来。
-(UITableView *)tableview{
    if (_tableview==nil) {
        _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
        _tableview.delegate=self;
        _tableview.dataSource=self;
        _tableview.tableFooterView=[[UIView alloc]init];
        
    }

    return _tableview;
}

-(NSArray *)kitArray{

    if (_kitArray==nil) {
        _kitArray=@[@"UIButton",@"UILabel"];
        
    }

    return _kitArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
