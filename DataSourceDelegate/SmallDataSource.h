//
//  SmallDataSource.h
//  DealDetails
//
//  Created by Armin Kroll on 27/12/2014.
//
//

#import <Foundation/Foundation.h>
#import "Entry.h"

// This is an example of a small data source which will use multipe cells

@interface SmallDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) Entry *entry;

- (instancetype) initWithEntry:(Entry*)entry;

@end
