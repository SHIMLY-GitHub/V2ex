//
//  UIFont+MyFont.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "UIFont+MyFont.h"

@implementation UIFont (MyFont)
+(UIFont*) v2exFont:(FontType) type{
    
  
    return [UIFont fontWithName:DefaultFont size:17];
}
@end
