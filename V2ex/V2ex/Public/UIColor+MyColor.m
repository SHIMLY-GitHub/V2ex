//
//  UIColor+MyColor.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "UIColor+MyColor.h"

@implementation UIColor (MyColor)

+ (UIColor*) color:(NSString*)colorString
{
    if([colorString isEqualToString:@"clear"])
    {
        return [UIColor clearColor];
    }
    
    NSArray* colors = [colorString componentsSeparatedByString:@","];
    
    if([colors count]!=3 && [colors count]!=4)
    {
        colors = [DefaultCellBackgroundColor componentsSeparatedByString:@","];
    }
    
    float red   = [(NSString*)[colors objectAtIndex:0] floatValue];
    float green = [(NSString*)[colors objectAtIndex:1] floatValue];
    float blue  = [(NSString*)[colors objectAtIndex:2] floatValue];
    float alpha = 1;
    
    if([colors count]==4)
    {
        alpha = [(NSString*)[colors objectAtIndex:3] floatValue];
    }
    
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}
@end
