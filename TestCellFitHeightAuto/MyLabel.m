//
//  MyLabel.m
//  TestCellFitHeightAuto
//
//  Created by 刘璇 on 13-4-16.
//  Copyright (c) 2013年 刘璇. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel
@synthesize aText=_aText;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}


-(void)setText:(NSString *)text
{
    CGSize size=[text sizeWithFont:[UIFont fontWithName:@"Arial" size:25] constrainedToSize:CGSizeMake(320, 2000) lineBreakMode:NSLineBreakByCharWrapping];
    [self setFont:[UIFont fontWithName:@"Arial" size:25]];
    [self setNumberOfLines:0];//可以多行
    self.frame=CGRectMake(self.frame.origin.x+5, self.frame.origin.y+5, size.width, size.height);
    [super setText:text];
}


-(void)setAText:(NSString *)aText
{
    CGSize size=[aText sizeWithFont:[UIFont fontWithName:@"Arial" size:25] constrainedToSize:CGSizeMake(320, 1000) lineBreakMode:NSLineBreakByCharWrapping];
    [self setFont:[UIFont fontWithName:@"Arial" size:25]];
    [self setNumberOfLines:0];//可以多行
    self.frame=CGRectMake(self.frame.origin.x, self.frame.origin.y
                          , size.width, size.height);
    self.text=aText;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    
}
*/

@end
