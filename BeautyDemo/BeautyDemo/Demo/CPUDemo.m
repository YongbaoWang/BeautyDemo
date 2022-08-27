//
//  CPUTestDemo.m
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import "CPUDemo.h"

@implementation CPUDemo

/*
 需求描述： 控制CPU使用率
 技术分析： CPU使用率：单位时间内，CPU调用次数/CPU最大调用次数；
 解决方案： 一直占用CPU，同时，单位时间内，执行 * 条语句，然后休眠 * s，交替执行；控制语句执行次数与休眠次数的比例。
 执行语句的时间，都可以等同于CPU的耗时，因此可以计算耗时时间
 
 问题难点：如何分配 忙语句 与 休眠时间 的比例 ？
 方案总结：本题原理上可以从语句的调用次数考虑，但是调用次数与CPU频率密切相关，编写后的代码，平台可移植性较差；同时可以换个角度思考问题，从占用时间的角度考虑，执行*s的语句，然后休眠*s，从而达到控制CPU使用率的目的。
 */
- (void)invokeTestCase {
    // CPU使用率
    double usage = 0.3;
    
    // 执行语句时间, s
    double busyTime = 0.01;
    
    // 休眠时间
    double idleTime = 0;
    if (usage > 0) {
        idleTime = busyTime/usage - busyTime;
    }
        
    while (true) {
        CFAbsoluteTime startTime = CFAbsoluteTimeGetCurrent();
        
        while (CFAbsoluteTimeGetCurrent() - startTime < busyTime * 1.12) { }
        
        [NSThread sleepForTimeInterval:idleTime];
    }
}

@end
