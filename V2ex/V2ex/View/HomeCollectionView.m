//
//  HomeCollectionView.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "HomeCollectionView.h"

@interface HomeCollectionView ()

@property(nonatomic,strong) UICollectionView * collectionView;
@end

@implementation HomeCollectionView

-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:flowLayout];
        
    }
    return self;
}

@end
