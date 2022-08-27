//
//  TestDemoProtocol.h
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DemoProtocol <NSObject>

/// 执行测试用例
- (void)invokeTestCase;

@end

NS_ASSUME_NONNULL_END
