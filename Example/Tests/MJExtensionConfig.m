//
//  MJExtensionConfig.m
//  Example
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import "MJExtensionConfig.h"
#import <MJExtension/MJExtension.h>

@implementation MJExtensionConfig

+ (void)load
{
    [NSObject mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return @{
            @"ID": @"id",
        };
    }];
}

@end
