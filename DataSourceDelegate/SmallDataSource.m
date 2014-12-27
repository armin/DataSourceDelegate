//
//  SmallDataSource.m
//  DealDetails
//
//  Created by Armin Kroll on 27/12/2014.
//
//

#import "SmallDataSource.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"

// This (artificially) small data source/ view delegate will use the same model object and display less cells. This is a sample of how variations of the table views can be done without having huge table view controllers. This class deals with the specific strucutre of a table view.

@implementation SmallDataSource

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
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        static NSString *cellIdentifier = @"FirstCellIdenfier";
        FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"FirstTableViewCell" owner:nil options:nil] objectAtIndex:0];
        }
        
        // Configure the cell...
        [cell setupWithOne:self.entry.one two:self.entry.two];
        
        return cell;
    }
    
    return nil;
}

@end
