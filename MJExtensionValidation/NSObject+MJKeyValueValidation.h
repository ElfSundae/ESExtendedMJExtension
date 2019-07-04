//
//  NSObject+MJKeyValueValidation.h
//  MJExtensionValidation
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MJKeyValueValidation <NSObject>
@optional

/**
 * Validates the converted object.
 */
+ (BOOL)mj_validateConvertedObject:(id)object;

@end

@interface NSObject (MJKeyValueValidation) <MJKeyValueValidation>

@end

NS_ASSUME_NONNULL_END
