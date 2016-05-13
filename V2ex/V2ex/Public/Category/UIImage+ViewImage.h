//
//  UIImage+ViewImage.h
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ViewImage)
+ (UIImage*) imageWithColor:(NSString*)color;

+(UIImage * ) markImageWithString:(NSString*) string;
@end
