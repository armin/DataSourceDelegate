//
//  SecondTableViewCell.m
//  DecomposedTableView
//
//  Created by Armin Kroll on 27/12/2014.
//  Copyright (c) 2014 Raised Pixels. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setupWithThree:(NSString*)three four:(NSString*)four
{
    self.threeLabel.text = three;
    self.fourLabel.text = four;
}

@end
