//
//  Models.m
//  Example
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import "Models.h"
#import <MJExtension/MJExtension.h>
#import <MJExtensionValidation/MJExtensionValidation.h>

@implementation User

+ (NSDictionary *)mj_objectClassInArray
{
    return @{ @"posts": [Post class] };
}

@end

@implementation NewUser

+ (NSDictionary *)mj_objectClassInArray
{
    return @{ @"posts": [NewPost class] };
}

+ (BOOL)mj_validateConvertedObject:(NewUser *)object
{
    return object.ID.length && object.ID.mj_isPureInt;
}

@end

@implementation Post

@end

@implementation NewPost

+ (BOOL)mj_validateConvertedObject:(NewPost *)object
{
    return object.ID.length;
}

@end
