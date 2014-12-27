//
//  Entry.h
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject
@property (nonatomic, strong) NSString *one;
@property (nonatomic, strong) NSString *two;
@property (nonatomic, strong) NSString *tree;
@property (nonatomic, strong) NSString *four;

- (instancetype)initWithOne:(NSString*)one
                        two:(NSString*)two
                      three:(NSString*)three
                       four:(NSString*)four;
@end
