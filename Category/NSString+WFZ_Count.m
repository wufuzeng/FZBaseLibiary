//
//  NSString+WFZ_Count.m
//  BenDiYouHui
//
//  Created by wufuzeng on 2018/3/8.
//  Copyright © 2018年 wufuzeng. All rights reserved.
//

#import "NSString+WFZ_Count.h"

@implementation NSString (WFZ_Count)

// 字符串中数字个数
+ (int)digitalSum:(NSString *)str
{
    int count = 0;
    for (int i = 0; i<str.length; i++)
    {
        int temp = [str characterAtIndex:i];
        if (temp >= '0' && temp <= '9')
        {
            count++;
        }
    }
    return count;
}

- (int)digitalCount
{
    return [NSString digitalSum:self];
}


// 字符串中字母个数
+ (int)alphabetSum:(NSString *)str
{
    int count = 0;
    for (int i = 0; i<str.length; i++)
    {
        int temp = [str characterAtIndex:i];
        if ((temp >= 'A' && temp <= 'Z')||(temp >= 'a' && temp <= 'z'))
        {
            count++;
        }
    }
    return count;
}

- (int)alphabetCount
{
    return [NSString alphabetSum:self];
}

// 字符串中字母和数字个数
+ (int)alphabetAndDigitalSum:(NSString *)str
{
    int count = 0;
    for (int i = 0; i<str.length; i++)
    {
        int temp = [str characterAtIndex:i];
        if ((temp >= 'A' && temp <= 'Z')||(temp >= 'a' && temp <= 'z')||(temp >= '0' && temp <= '9'))
        {
            count++;
        }
    }
    return count;
}

- (int)alphabetAndDigitalCount
{
    return [NSString alphabetAndDigitalSum:self];
}


/**
 *  @brief 获取字符数量
 */
- (int)wordsCount
{
    NSInteger n = self.length;
    int i;
    int l = 0, a = 0, b = 0;
    unichar c;
    for (i = 0; i < n; i++)
    {
        c = [self characterAtIndex:i];
        if (isblank(c)) {
            b++;
        } else if (isascii(c)) {
            a++;
        } else {
            l++;
        }
    }
    if (a == 0 && l == 0) {
        return 0;
    }
    return l + (int)ceilf((float)(a + b) / 2.0);
}


@end
