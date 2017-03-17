//
//  WeakTimerTarget.h
//  iOS定时器NSTimer循环引用
//
//  Created by shinephe on 17/3/17.
//  Copyright © 2017年 shinephe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeakTimerTarget : NSObject

@property(nonatomic,assign)SEL selector;
@property(nonatomic,weak)NSTimer *timer;
@property(nonatomic,weak)id target;

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      target:(id)aTarget
                                    selector:(SEL)aSelector
                                    userInfo:(id)userInfo
                                     repeats:(BOOL)yesOrNo;

@end
