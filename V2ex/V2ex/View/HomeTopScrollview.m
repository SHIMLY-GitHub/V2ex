//
//  HompTopScrollview.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "HomeTopScrollview.h"
#import "ItemCell.h"

@interface HomeTopScrollview()

@property(nonatomic,strong)UIScrollView * scrollow;
@property(nonatomic,strong)UIView       * contentView;
@end
@implementation HomeTopScrollview

-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        _scrollow = [[UIScrollView alloc] init];
       
        _scrollow.showsHorizontalScrollIndicator = NO;
        [self addSubview:_scrollow];
        
        [_scrollow mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor clearColor];
        [self.scrollow addSubview:_contentView];
        
        [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self.scrollow);
            make.height.equalTo(self.scrollow.mas_height);
        }];
        NSMutableArray * array = [NSMutableArray array];
        for (NSInteger i=0;i<12; i++) {
            
            ItemCell * cell = [[ItemCell alloc] init];
            [cell itemCellTitle:@"你好"];
            [_contentView addSubview:cell];
            [array addObject:cell];
            
        }
        
        NSInteger i=0;
        CGFloat width = 60;
    
        ItemCell * lastView = nil;
        for (ItemCell * view in array) {
           [view mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.mas_equalTo(5);
               make.bottom.mas_equalTo(-5);
               make.left.mas_equalTo(lastView ? lastView.mas_right : @0).offset(10);
               make.width.mas_equalTo(width);
           }];
            lastView = view;
            i++;
        }
        [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(lastView.mas_right).offset(10);
        }];
       
    
    }
    
    return self;
}

@end
