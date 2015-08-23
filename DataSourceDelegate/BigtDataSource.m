//
//  BigtDataSource.m
//  BigtDataSource
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import "BigtDataSource.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"

// strictly speakinng it's data source and table view delegate without but it's not a table view controller.
// can be used in table view contollers though to compose more complex tables. E.g. could be section and that's why we do not care about section here (the including table view controller will need to do that)


#pragma mark - Cell indices

typedef enum {
    kFirstIndex = 0,
    kSecondIndex
} BigtDataSourceIndexType;

#pragma mark - Data Source

@interface BigtDataSource ()
@end

@implementation BigtDataSource

- (instancetype) initWithEntry:(Entry*)entry
{
    self = [super init];
    self.entry = entry;
    return self;
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
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == kFirstIndex) {
        static NSString *cellIdentifier = @"FirstCellIdenfier";
        FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"FirstTableViewCell" owner:nil options:nil] objectAtIndex:0];
        }
        
        // Configure the cell...
        [cell setupWithOne:self.entry.one two:self.entry.two];
        
        return cell;
    }
    
    if (indexPath.row == kSecondIndex) {
        static NSString *cellIdentifier = @"SecondCellIdenfier";
        SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"SecondTableViewCell" owner:nil options:nil] objectAtIndex:0];
        }
        
        // Configure the cell...
        [cell setupWithThree:self.entry.tree four:self.entry.four];
        
        return cell;
    }
    
    return nil;
}




@end
