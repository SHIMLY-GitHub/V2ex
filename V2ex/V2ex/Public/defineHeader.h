//
//  Header.h
//  V2ex
//
//  Created by shimly on 16/5/12.
//  Copyright © 2016年 shimly. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define kScreenBoundWidth [UIScreen mainScreen].bounds.size.width

#define kScreenBoundHeight [UIScreen mainScreen].bounds.size.height

#define kStatusHeight [[UIApplication sharedApplication] statusBarFrame].size.height


//判断pad 还是 iphone
#define isPad  [UIDevice currentDevice].userInterfaceIdiom==UIUserInterfaceIdiomPad

#endif /* Header_h */
