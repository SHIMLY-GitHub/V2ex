//
//  UIFont+MyFont.h
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum
{
    DeaultFont                = 0,
    FontScrollowItemFont      = 1
    
    
} FontType;
@interface UIFont (MyFont)
+(UIFont*) v2exFont:(FontType) type;

@end
