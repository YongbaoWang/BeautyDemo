//
//  DemoFactory.m
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import "DemoFactory.h"
#import "CPUDemo.h"
#import "ChessDemo.h"

@implementation DemoFactory

+ (id<DemoProtocol>)create:(DemoType)type {
    switch (type) {
        case DemoTypeCPU:
            return [CPUDemo new];
        case DemoTypeChess:
            return [ChessDemo new];
        default:
            return nil;
    }
    
    return nil;
}

@end
