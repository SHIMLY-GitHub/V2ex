//
//  BaseViewController.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBaseView];
    [self initBaseNavigation];
    
    
}
-(void)initBaseView
{
    self.view.backgroundColor = [UIColor color:@"226,226,226,1"];
   
    
   
}
-(void) initBaseNavigation
{
   
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
