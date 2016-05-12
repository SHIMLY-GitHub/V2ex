//
//  ViewController.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "ViewController.h"
#import "HomeTopScrollview.h"
#import "HomeTableView.h"

@interface ViewController ()

@property(nonatomic,strong) HomeTopScrollview * topScrollowView;
@property(nonatomic,strong) HomeTableView     * homeTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    [self.navigationController.navigationBar setHidden:YES];
   
}
-(void)initView
{
   
    
    _topScrollowView = [[HomeTopScrollview alloc] init];
    
    [self.view addSubview:_topScrollowView];

    [_topScrollowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(kStatusHeight);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(40);
    }];
    _homeTableView = [[HomeTableView alloc] init];
    [self.view addSubview:_homeTableView];
    [_homeTableView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(self.topScrollowView.mas_bottom).offset(10);
        make.left.mas_equalTo(self.topScrollowView);
        make.right.mas_equalTo(self.topScrollowView);
        make.bottom.mas_equalTo(self.view);
        
    }];
    
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
