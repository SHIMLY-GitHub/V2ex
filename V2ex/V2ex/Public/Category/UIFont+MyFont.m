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
    
    if (type==MarkLabelFont) {
        
        return [UIFont fontWithName:@"CourierNewPS-BoldItalicMT" size:12];
    }
    if (type==AuthorLabelFont) {
        
         return [UIFont fontWithName:@"Courier-Bold" size:14];
    }
    if (type==TimeLableFont) {
        return [UIFont fontWithName:@"CourierNewPS-ItalicMT" size:12];
        
    }
    if (type==FinalLableFont) {
        
         return [UIFont fontWithName:@"CourierNewPS-ItalicMT" size:14];
    }
    
    if (type==MessageCountFont) {
        
        return [UIFont fontWithName:@"Verdana-Bold" size:12];
    }
    
  
    return [UIFont fontWithName:DefaultFont size:17];
}
@end
