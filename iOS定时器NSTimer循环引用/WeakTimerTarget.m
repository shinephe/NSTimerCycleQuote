//
//  WeakTimerTarget.m
//  iOS定时器NSTimer循环引用
//
//  Created by shinephe on 17/3/17.
//  Copyright © 2017年 shinephe. All rights reserved.
//

#import "WeakTimerTarget.h"

@implementation WeakTimerTarget

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      target:(id)aTarget
                                    selector:(SEL)aSelector
                                    userInfo:(id)userInfo
                                     repeats:(BOOL)yesOrNo {
    
    WeakTimerTarget *timerTarget = [WeakTimerTarget new];
    timerTarget.target = aTarget;
    timerTarget.selector = aSelector;

    timerTarget.timer = [NSTimer scheduledTimerWithTimeInterval:interval target:timerTarget selector:@selector(fire:) userInfo:userInfo repeats:yesOrNo];
    
    return timerTarget.timer;
}


-(void)fire:(NSTimer *)timer{
    
    if (self.target) {
        
    [self.target performSelector:self.selector withObject:timer.userInfo];

    } else {
        
        [self.timer invalidate];
    }
}


@end
