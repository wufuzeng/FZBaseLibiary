//
//  NSString+WFZ_Count.h
//  BenDiYouHui
//
//  Created by wufuzeng on 2018/3/8.
//  Copyright © 2018年 wufuzeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WFZ_Count)

// 字符串中数字个数
+ (int)digitalSum:(NSString *)str;
- (int)digitalCount;


// 字符串中字母个数
+ (int)alphabetSum:(NSString *)str;
- (int)alphabetCount;

// 字符串中字母和数字个数
+ (int)alphabetAndDigitalSum:(NSString *)str;
- (int)alphabetAndDigitalCount;

/** 获取字符数量 */
- (int)wordsCount;

@end
