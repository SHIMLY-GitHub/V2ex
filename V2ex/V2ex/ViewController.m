//
//  ViewController.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "ViewController.h"
#import "HomeTopScrollview.h"

@interface ViewController ()

@property(nonatomic,strong) HomeTopScrollview * topScrollowView;
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
    
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
