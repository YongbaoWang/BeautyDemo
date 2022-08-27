//
//  DemoFactory.h
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import <Foundation/Foundation.h>
#import "DemoProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    DemoTypeCPU,
    DemoTypeChess,
} DemoType;

@interface DemoFactory : NSObject

/// 创建测试对象
/// @param type 测试类别
+ (id<DemoProtocol>)create:(DemoType)type;

@end

NS_ASSUME_NONNULL_END
