//
//  TableView.h
//  Sever_DataSourse
//
//  Created by 蒋永昌 on 16/5/22.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArrayDataSource.h"

@protocol TableDelegate <NSObject>

- (void)passStrToController:(NSString *)str;

@end


@interface TableView : UITableView<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSArray *dataArray;

@property (nonatomic, strong) ArrayDataSource *photosArrayDataSource;

@property(nonatomic,assign)id<TableDelegate>myDelegate;


@end
