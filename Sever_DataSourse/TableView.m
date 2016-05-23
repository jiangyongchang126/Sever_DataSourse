//
//  TableView.m
//  Sever_DataSourse
//
//  Created by 蒋永昌 on 16/5/22.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "TableView.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@implementation TableView


-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    
    if (self = [super initWithFrame:frame style:style]) {
        
        self.delegate = self;
        
        [self setupTableView];
    }
    
    return self;
}

- (void)setupTableView
{
    TableViewCellConfigureBlock configureCell = ^(UITableViewCell *cell, NSString *str) {
        
        cell.textLabel.text = str;
    };
    NSArray *photos = @[@"jiang",@"yong",@"chang"];
    self.photosArrayDataSource = [[ArrayDataSource alloc] initWithItems:photos
                                                         cellIdentifier:PhotoCellIdentifier
                                                     configureCellBlock:configureCell];
    self.dataSource = self.photosArrayDataSource;
    
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
//    [self.tableView registerNib:[PhotoCell nib] forCellReuseIdentifier:PhotoCellIdentifier];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *pasStr = [self.photosArrayDataSource itemAtIndexPath:indexPath];
    
    if ([self.myDelegate respondsToSelector:@selector(passStrToController:)]) {
        
        [self.myDelegate passStrToController:pasStr];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
