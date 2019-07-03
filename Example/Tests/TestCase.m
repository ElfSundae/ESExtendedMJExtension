//
//  TestCase.m
//  Example
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import "TestCase.h"
#import <MJExtension/MJExtension.h>
#import "Models.h"

static void Log(Class cls, id object)
{
    NSString *error = [cls mj_error].domain;
    error = error ? [NSString stringWithFormat:@"❌ %@", error] : @"✅";
    NSLog(@"%@ %@", error, object);
}

#define LogUser(obj) Log([User class], obj);

@implementation TestCase

+ (void)run
{
    LogUser([User mj_objectWithKeyValues:nil]);
    LogUser([User mj_objectWithKeyValues:@"foo"]);
    LogUser([User mj_objectWithKeyValues:@{}]);
    LogUser([User mj_objectWithKeyValues:@{ @"id": @123 }]);
}

@end
