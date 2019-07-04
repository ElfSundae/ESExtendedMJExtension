//
//  Models.h
//  Example
//
//  Created by Elf Sundae on 2019/07/03.
//  Copyright © 2019 https://0x123.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Post;

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray<Post *> *posts;

@end

@interface NewUser : User
@end

@interface Post : NSObject

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *content;

@end

@interface NewPost : Post
@end

NS_ASSUME_NONNULL_END
