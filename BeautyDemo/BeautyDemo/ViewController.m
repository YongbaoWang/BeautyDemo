//
//  ViewController.m
//  BeautyDemo
//
//  Created by Ever on 8/27/22.
//

#import "ViewController.h"
#import "DemoFactory.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self testCase];
}

- (void)testCase {
    id<DemoProtocol> demo = [DemoFactory create:DemoTypeCPU];
    
    [demo invokeTestCase];
}

@end
