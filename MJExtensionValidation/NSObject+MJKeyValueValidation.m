//
//  NSObject+MJKeyValueValidation.m
//  MJExtensionValidation
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import "NSObject+MJKeyValueValidation.h"
#import <MJExtension/MJExtension.h>
#import <objc/runtime.h>
#import <CoreData/CoreData.h>

static void MVSwizzleClassMethod(Class class, SEL originalSelector, SEL swizzledSelector)
{
    class = object_getClass(class);
    Method originalMethod = class_getClassMethod(class, originalSelector);
    Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
    if (class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@implementation NSObject (MJKeyValueValidation)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        MVSwizzleClassMethod(self, @selector(mj_objectWithKeyValues:context:), @selector(swizzled_mj_objectWithKeyValues:context:));
    });
}

+ (instancetype)swizzled_mj_objectWithKeyValues:(id)keyValues context:(NSManagedObjectContext *)context
{
    id object = [self swizzled_mj_objectWithKeyValues:keyValues context:context];

    if (object &&
        [self respondsToSelector:@selector(mj_validateConvertedObject:)] &&
        ![self mj_validateConvertedObject:object]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        [self performSelector:@selector(setMj_error:) withObject:[NSError errorWithDomain:@"The converted object could not pass validation." code:250 userInfo:nil]];
#pragma clang diagnostic pop

        object = nil;
    }

    return object;
}

@end
