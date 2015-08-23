//
//  TableViewController.m
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import "TableViewController.h"
#import "FirstTableViewCell.h"

#pragma mark - TableViewController

@interface TableViewController ()
@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.dataSource tableView:tableView numberOfRowsInSection:section];
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.dataSource tableView:tableView heightForRowAtIndexPath:indexPath];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.dataSource tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell;
}

@end
