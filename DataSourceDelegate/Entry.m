//
//  Entry.m
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithOne:(NSString*)one
                        two:(NSString*)two
                      three:(NSString*)three
                       four:(NSString*)four
{
    self = [super init];
    self.one = one;
    self.two = two;
    self.tree = three;
    self.four = four;
    return self;
}

@end
