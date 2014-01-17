//
//  MyTableViewCell.m
//  TestCellFitHeightAuto
//
//  Created by 刘璇 on 13-4-16.
//  Copyright (c) 2013年 刘璇. All rights reserved.
//

#import "MyTableViewCell.h"
#import "MyLabel.h"
@implementation MyTableViewCell

@synthesize label=_label;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        MyLabel * textLabel=[[MyLabel alloc]initWithFrame:CGRectZero];
        [self.contentView addSubview:textLabel];
        [textLabel setBackgroundColor:[UIColor redColor]];
        self.label=textLabel;
        [textLabel release];
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
