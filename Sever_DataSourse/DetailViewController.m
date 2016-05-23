//
//  DetailViewController.m
//  Sever_DataSourse
//
//  Created by 蒋永昌 on 16/5/22.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(100, 100, 80, 30);
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    
    label.text = self.str;
    
    // Do any additional setup after loading the view.
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
