//
//  HomeCell.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "HomeCell.h"

#define authorSize 40
#define markHeight 17

@interface HomeCell()
@property(nonatomic,strong)UIImageView * authorImageView;
@property(nonatomic,strong)UILabel     * titleLable;
@property(nonatomic,strong)UILabel     * markLabel;
@property(nonatomic,strong)UILabel     * authorNameLabel;
@property(nonatomic,strong)UILabel     * timeLable;
@property(nonatomic,strong)UILabel     * finalMassageLable;
@property(nonatomic,strong)UILabel     * massgeCountLable;
@property(nonatomic,strong)UILabel     * lineLabel;

@end

@implementation HomeCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _authorImageView = [[UIImageView alloc] init];
        _authorImageView.layer.cornerRadius = V2exCorn;
        _authorImageView.clipsToBounds = YES;
        _titleLable = [[UILabel alloc] init];
        _titleLable.numberOfLines = 0;
        _titleLable.font = [UIFont v2exFont:DeaultFont];
        
        _markLabel = [[UILabel alloc] init];
      
        _markLabel.backgroundColor = [UIColor color:@"240,240,240,1"];
        _markLabel.font = [UIFont v2exFont:MarkLabelFont];
        _markLabel.textColor = [UIColor color:@"158,158,158,1"];
        _markLabel.layer.cornerRadius = V2exCorn;
        
        
        _authorNameLabel = [[UILabel alloc] init];
      
        _authorNameLabel.textColor = [UIColor color:@"119,128,135,1"];
        _authorNameLabel.font = [UIFont v2exFont:AuthorLabelFont];
        
        _timeLable = [[UILabel alloc] init];
        
        _timeLable.textColor = [UIColor color:@"194,194,194,1"];
        _timeLable.font = [UIFont v2exFont:TimeLableFont];
        
        _finalMassageLable = [[UILabel alloc] init];
        
        _finalMassageLable.textColor = [UIColor color:@"194,194,194,1"];
        _finalMassageLable.font = [UIFont v2exFont:FinalLableFont];
        
        
        _massgeCountLable = [[UILabel alloc] init];
        _massgeCountLable.backgroundColor = [UIColor color:@"170,176,199,1"];
        _massgeCountLable.layer.cornerRadius = 9;
        _massgeCountLable.clipsToBounds = YES;
        _massgeCountLable.font = [UIFont v2exFont:MessageCountFont];
        
        _massgeCountLable.textAlignment = NSTextAlignmentCenter;
        _massgeCountLable.textColor = [UIColor whiteColor];
        
        _lineLabel = [[UILabel alloc] init];
        _lineLabel.backgroundColor = [UIColor color:@"226,226,226,1"];
        
        [self.contentView addSubview:_authorImageView];
        [self.contentView addSubview:_titleLable];
        [self.contentView addSubview:_markLabel];
        [self.contentView addSubview:_authorNameLabel];
        [self.contentView addSubview:_timeLable];
        [self.contentView addSubview:_finalMassageLable];
        [self.contentView addSubview:_massgeCountLable];
        [self.contentView addSubview:_lineLabel];
        [self cellConstraints];
        
    }
    
    return self;
}

-(void)cellConstraints
{
    [_lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.height.mas_equalTo(1);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-1);
        
    }];
    
    

    [_markLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.bottom.mas_equalTo(_lineLabel.mas_top).offset(-10);
        make.left.mas_equalTo(authorSize+20);
        //make.width.mas_equalTo(30);
        make.height.mas_equalTo(markHeight);
        
        
    }];
 
    [_authorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_markLabel.mas_right);
        make.height.mas_equalTo(_markLabel);
        make.bottom.mas_equalTo(_markLabel);
        
        
    }];
    
    [_timeLable mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.mas_equalTo(_authorNameLabel.mas_right);
        make.height.mas_equalTo(_markLabel);
        make.bottom.mas_equalTo(_markLabel);
        
    }];
    
    [_finalMassageLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_timeLable.mas_right);
        make.height.mas_equalTo(_markLabel);
        make.bottom.mas_equalTo(_markLabel);
        
        
        
    }];
    
   
    [_authorImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(10);
        make.width.height.mas_equalTo(authorSize);
        
        
    }];
    
    
    [_titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(_authorImageView.mas_right).offset(10);
        make.right.mas_equalTo(-30);
        make.bottom.mas_equalTo(_finalMassageLable.mas_top).offset(-5);
        
        
    }];
   
    [_massgeCountLable mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(_authorImageView.mas_top);
        make.right.mas_equalTo(-5);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(20);
        
    }];
    
    [self initData];
    
    
}
-(void)initData{
    
    _titleLable.text = @"开始要读一遍 scrapy开始要读一遍 scrapy开始要读一遍 scrapy开始要读一遍 scrapy";
    
    _markLabel.text = @"程序员";
    _authorImageView.image = [UIImage imageNamed:@"touxiang"];
    

    NSString * authorString = [NSString stringWithFormat:@" •%@",@"smilmy"];
    
     NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:authorString];
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor color:@"204,204,204,1"] range:[authorString rangeOfString:@"•"]];
    
    _authorNameLabel.attributedText = attrString;
    
    NSString * timeString = [NSString stringWithFormat:@" •%@",@"1分钟前"];
    
    NSMutableAttributedString * timeAttrSting = [[NSMutableAttributedString alloc] initWithString:timeString];
    [timeAttrSting addAttribute:NSFontAttributeName value:_authorNameLabel.font range:[authorString rangeOfString:@"•"]];
    [timeAttrSting addAttribute:NSForegroundColorAttributeName value:[UIColor color:@"204,204,204,1"] range:[authorString rangeOfString:@"•"]];
    _timeLable.attributedText = timeAttrSting;
    
    
    NSString * finalString = [NSString stringWithFormat:@" •%@",@"chaojihaoni"];
    
    NSMutableAttributedString * finalAttrString = [[NSMutableAttributedString alloc] initWithString:finalString];
    
     [finalAttrString addAttribute:NSFontAttributeName value:_authorNameLabel.font range:[finalString rangeOfString:@"•"]];
    
    [finalAttrString addAttribute:NSForegroundColorAttributeName value:[UIColor color:@"204,204,204,1"] range:[finalString rangeOfString:@"•"]];
    _finalMassageLable.attributedText = finalAttrString;
    
    _massgeCountLable.text = @"23";
    
    
}










@end
