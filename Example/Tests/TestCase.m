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
    NSLog(@"%@ %@ %@", error, object, [object mj_keyValues]);
}

static void LogUser(id json)
{
    Log(User.class, [User mj_objectWithKeyValues:json]);
    Log(NewUser.class, [NewUser mj_objectWithKeyValues:json]);
}

@implementation TestCase

+ (void)run
{
    LogUser(nil);
    LogUser(@"string");
    LogUser(@{});
    LogUser(@{ @"id": @123 });
    LogUser(@{ @"id": @"fake" });
    LogUser(@{ @"id": @123, @"posts": @[] });
    LogUser(@{ @"id": @123, @"posts": @[ @{} ] });
    LogUser(@{ @"id": @123, @"posts": @[ @{ @"content": @"foobar" } ] });
    LogUser(@{ @"id": @123, @"posts": @[ @{ @"content": @"foobar", @"id": @456 } ] });
}

@end
