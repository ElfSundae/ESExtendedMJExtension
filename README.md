# MJExtensionValidation

[![Build status](https://github.com/ElfSundae/MJExtensionValidation/workflows/Build/badge.svg)](https://github.com/ElfSundae/MJExtensionValidation/actions?query=workflow%3ABuild)
![CocoaPods](https://img.shields.io/cocoapods/v/MJExtensionValidation)
![Platforms](https://img.shields.io/cocoapods/p/MJExtensionValidation)

MJExtensionValidation provides an opportunity of validating converted model objects for [MJExtension] (A fast, convenient and nonintrusive conversion framework between JSON and model).

为 [MJExtension] 的 JSON-to-Model 转换增加校验接口。

## Installation

```ruby
pod 'MJExtensionValidation'
```

## Usage

Implement `+mj_validateConvertedObject:withKeyValues:` method for your model to validate the converted object:

```objc
#import <MJExtensionValidation/MJExtensionValidation.h>

@implementation User

+ (BOOL)mj_validateConvertedObject:(User *)user withKeyValues:(id)keyValues
{
    return user.ID.length > 0;
}

@end
```

Then the JSON-to-model converting methods such as `+mj_objectWithKeyValues:` will return `nil` if the converted object could not pass the validation.

## License

MJExtensionValidation is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

[mjextension]: https://github.com/CoderMJLee/MJExtension
