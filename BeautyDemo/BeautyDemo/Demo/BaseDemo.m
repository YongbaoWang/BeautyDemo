//
//  BaseDemo.m
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import "BaseDemo.h"

@implementation BaseDemo

- (void)invokeTestCase {
    NSAssert(false, @"子类必须重写父类方法！");
}

@end
