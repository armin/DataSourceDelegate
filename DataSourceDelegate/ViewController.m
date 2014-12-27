//
//  ViewController.m
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "BigtDataSource.h"
#import "SmallDataSource.h"
#import "Entry.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"showAllDetailsSegue"]) {
        TableViewController *controller = segue.destinationViewController;
        Entry *entry = [[Entry alloc] initWithOne:@"one" two:@"two" three:@"three" four:@"four"];
        BigtDataSource *dataSource = [[BigtDataSource alloc] initWithEntry:entry];
        controller.dataSource = dataSource;
    }
    
    if ([segue.identifier isEqualToString:@"showLessDetailsSegue"]) {
        TableViewController *controller = segue.destinationViewController;
        Entry *entry = [[Entry alloc] initWithOne:@"one" two:@"two" three:@"three" four:@"four"];
        SmallDataSource *dataSource = [[SmallDataSource alloc] initWithEntry:entry];
        controller.dataSource = dataSource;
    }
}

@end
