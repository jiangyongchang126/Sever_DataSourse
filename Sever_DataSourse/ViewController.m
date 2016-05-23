//
//  ViewController.m
//  Sever_DataSourse
//
//  Created by 蒋永昌 on 16/5/22.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "TableView.h"

@interface ViewController ()<TableDelegate>
{
    TableView *_tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[TableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tableView.myDelegate = self;
    _tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self.view addSubview:_tableView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)passStrToController:(NSString *)str{
    
    DetailViewController *detailVC = [[DetailViewController alloc]init];
    detailVC.str = str;
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
