//
//  ChessTestDemo.m
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import "ChessDemo.h"

@implementation ChessDemo

/*
 需求描述：使用一个字节的存储空间，输出所有将帅的位置
 0  1  2
 3  4  5
 6  7  8
 
 问题分析：一个字节有8位，可以使用前4位存储“将“的位置，使用后4位存储”帅“的问题； 发散思维，考虑两者是否在同一列，即取模运算；
 同时需要注意，二进制的各种运算逻辑，应该如何处理; 首先程序中无法直接表示二进制，所以使用十进制来表示对应数据，同时通过移位操作，表示对应的数据；
 */

// 占用的位数
#define BITS_LENGTH 4

// 255，对应二进制中的 1111 1111
#define FULL_MASK 255

// 前4位的mask，对应二进制为 1111 0000
#define LEFT_MASK (FULL_MASK << BITS_LENGTH)

// 后4位的mask，对应二进制为 0000 1111
#define RIGHT_MASK (FULL_MASK >> BITS_LENGTH)

// 取出前4位的数据
#define LEFT_GET(b) ((b & LEFT_MASK) >> BITS_LENGTH)

// 取出后4位的数据
#define RIGHT_GET(b) (b & RIGHT_MASK)

// 将数字n写入前4位
#define LEFT_SET(b, n) (b = (n << BITS_LENGTH) | (b & RIGHT_MASK))

// 将数字n写入后4位
#define RIGHT_SET(b, n) (b = b & LEFT_MASK | n)

- (void)invokeTestCase {
    unsigned char b = '\0';
        
    for(LEFT_SET(b, 0); LEFT_GET(b) < 9; LEFT_SET(b, (LEFT_GET(b) + 1))) {
        for(RIGHT_SET(b, 0); RIGHT_GET(b) < 9; RIGHT_SET(b, (RIGHT_GET(b) + 1))) {
            if (LEFT_GET(b) % 3 != RIGHT_GET(b) % 3) {
                NSLog(@"将 = %d, 帅 = %d", LEFT_GET(b), RIGHT_GET(b));
            }
        }
    }
}

@end
