//
//  FirstTableViewCell.h
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *oneLabel;
@property (weak, nonatomic) IBOutlet UILabel *twoLabel;

- (void) setupWithOne:(NSString*)one two:(NSString*)two;

@end
