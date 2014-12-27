//
//  BigtDataSource.h
//  BigtDataSource
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

// This is an example of a large data source which will use multipe cells 

@interface BigtDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) Entry *entry;

- (instancetype) initWithEntry:(Entry*)entry;

@end
