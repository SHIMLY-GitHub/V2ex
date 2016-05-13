//
//  UIImage+ViewImage.m
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import "UIImage+ViewImage.h"

@implementation UIImage (ViewImage)

+ (UIImage*) imageWithColor:(NSString*)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor color:color].CGColor);
    CGContextFillRect(context, rect);
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage * ) markImageWithString:(NSString*) string
{
    
    UIView * view = [self markImageViewWithString:string];
    
    return [self getImageFromView:view];
    
}

+(UIView*) markImageViewWithString:(NSString*) string
{
    UILabel * label = [[UILabel alloc] init];
    label.bounds = CGRectMake(0, 0, 30, 15);
    label.text = string;
    label.font = [UIFont systemFontOfSize:10];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    
    return label;
}


+(UIImage *)getImageFromView:(UIView *)orgView{
    UIGraphicsBeginImageContext(orgView.bounds.size);
    [orgView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
