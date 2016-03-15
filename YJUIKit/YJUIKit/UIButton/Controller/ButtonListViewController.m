//
//  ButtonListViewController.m
//  YJUIKit
//
//  Created by hyj on 16/3/14.
//  Copyright © 2016年 juyi. All rights reserved.
//

#import "ButtonListViewController.h"
#import "Button1ViewController.h"
#import "Button2ViewController.h"
#import "Button3ViewController.h"
#import "Button4ViewController.h"
#import "Button5ViewController.h"
#import "Button6ViewController.h"
#import "UIButton7ViewController.h"
@interface ButtonListViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableview;
@property (nonatomic,strong) NSArray *kitArray;

@end

@implementation ButtonListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];

    self.title=@"功能列表";//导航条的题目
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
        
        [self.navigationController pushViewController:[[Button1ViewController alloc]init] animated:YES];
            break;
        }
        case 1:{
        
            [self.navigationController pushViewController:[[Button2ViewController alloc]init] animated:YES];
            break;
        }
        case 2:{
            
            [self.navigationController pushViewController:[[Button3ViewController alloc]init] animated:YES];
            break;
        }
        case 3:{
            
            [self.navigationController pushViewController:[[Button4ViewController alloc]init] animated:YES];
            break;
        }
        case 4:{
            
            [self.navigationController pushViewController:[[Button5ViewController alloc]init] animated:YES];
            break;
        }
        case 5:{
            
            [self.navigationController pushViewController:[[Button6ViewController alloc]init] animated:YES];
            break;
        }
        case 6:{
            
            [self.navigationController pushViewController:[[UIButton7ViewController alloc]init] animated:YES];
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
        _kitArray=@[@"图片和文字(第一种分类)",@"图片和文字(第二种分类)",@"设置点击间隔时间",@"点击录音按钮",@"扩大点击范围",@"短信倒计时",@"GridView"];
        
    }
    
    return _kitArray;
}
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
