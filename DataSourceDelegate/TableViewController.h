//
//  TableViewController.h
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BigtDataSource.h"

@interface TableViewController : UITableViewController

// data source can be set from the calling view controller to show different data
@property (nonatomic, strong)  id <UITableViewDataSource,UITableViewDelegate> dataSource;

@end
