//
//  ItemCell.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.selected = NO;
        
        [self addTarget:self action:@selector(selectItem:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return self;
}

-(void)itemCellTitle:(NSString*) title
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
   
}
-(void)selectItem:(UIButton*) button
{
    button.selected = !button.self;
    
}




@end
