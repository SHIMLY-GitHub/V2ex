//
//  HomeCell.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "HomeCell.h"

#define authorSize 40

@interface HomeCell()
@property(nonatomic,strong)UIImageView * authorImageView;
@property(nonatomic,strong)UILabel     * titleLable;
@property(nonatomic,strong)UIImageView * markImageView;
@property(nonatomic,strong)UILabel     * authorNameLabel;
@property(nonatomic,strong)UILabel     * timeLable;
@property(nonatomic,strong)UILabel     * finalMassageLable;
@property(nonatomic,strong)UIImageView * massgeCountImageView;
@property(nonatomic,strong)UILabel     * lineLabel;

@end

@implementation HomeCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _authorImageView = [[UIImageView alloc] init];
        
        _titleLable = [[UILabel alloc] init];
        _titleLable.numberOfLines = 0;
        
        _markImageView = [[UIImageView alloc] init];
        
        _authorNameLabel = [[UILabel alloc] init];
        
        _timeLable = [[UILabel alloc] init];
        
        _finalMassageLable = [[UILabel alloc] init];
        
        _massgeCountImageView = [[UIImageView alloc] init];
        _lineLabel = [[UILabel alloc] init];
        
        [self.contentView addSubview:_authorImageView];
        [self.contentView addSubview:_titleLable];
        [self.contentView addSubview:_markImageView];
        [self.contentView addSubview:_authorNameLabel];
        [self.contentView addSubview:_timeLable];
        [self.contentView addSubview:_finalMassageLable];
        [self.contentView addSubview:_massgeCountImageView];
        [self.contentView addSubview:_lineLabel];
        [self cellConstraints];
        
    }
    
    return self;
}

-(void)cellConstraints
{
    
    
    _lineLabel.backgroundColor = [UIColor greenColor];
    [_lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.height.mas_equalTo(1);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-1);
        
    }];
    
    
    _markImageView.backgroundColor = [UIColor yellowColor];
    [_markImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.bottom.mas_equalTo(_lineLabel.mas_top).offset(-10);
        make.left.mas_equalTo(authorSize+20);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(15);
        
        
    }];
    _authorNameLabel.backgroundColor = [UIColor yellowColor];
    [_authorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_markImageView.mas_right).offset(10);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(15);
        make.bottom.mas_equalTo(_markImageView);
        
        
    }];
    _timeLable.backgroundColor = [UIColor yellowColor];
    [_timeLable mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.mas_equalTo(_authorNameLabel.mas_right).offset(10);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(15);
        make.bottom.mas_equalTo(_markImageView);
        
    }];
    
    _finalMassageLable.backgroundColor = [UIColor yellowColor];
    
    [_finalMassageLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_timeLable.mas_right).offset(10);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(15);
        make.bottom.mas_equalTo(_markImageView);
        
        
    }];
    
    _authorImageView.backgroundColor = [UIColor blueColor];
    [_authorImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(10);
        make.width.height.mas_equalTo(authorSize);
        
        
    }];
    
    _titleLable.text = @"开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？开始要读一遍 scrapy 的代码了，大家说 20000 行代码，大概多久能读完？";
    [_titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(_authorImageView.mas_right).offset(10);
        make.right.mas_equalTo(-30);
        make.bottom.mas_equalTo(_finalMassageLable.mas_top).offset(-5);
        
        
    }];
    _massgeCountImageView.backgroundColor = [UIColor yellowColor];
    [_massgeCountImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(_authorImageView.mas_top).offset(10);
        make.right.mas_equalTo(-5);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(12);
        
    }];
    
    
    
}










@end
