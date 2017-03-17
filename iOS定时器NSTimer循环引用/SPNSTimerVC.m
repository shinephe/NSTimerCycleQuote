//
//  SPNSTimerVC.m
//  iOS定时器NSTimer循环引用
//
//  Created by shinephe on 17/3/17.
//  Copyright © 2017年 shinephe. All rights reserved.
//

#import "SPNSTimerVC.h"
#import "WeakTimerTarget.h"

@interface SPNSTimerVC ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation SPNSTimerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    //开启定时器
    self.timer = [WeakTimerTarget scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(timerRun) userInfo:nil repeats:YES];
}

- (void)timerRun {
    
    static NSInteger i = 0;

    SPLog(@"定时间正在输出-----%d",i++);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {

    [self.timer invalidate];
}



@end
