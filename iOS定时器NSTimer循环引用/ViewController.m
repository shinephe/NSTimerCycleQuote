//
//  ViewController.m
//  iOS定时器NSTimer循环引用
//
//  Created by shinephe on 17/3/17.
//  Copyright © 2017年 shinephe. All rights reserved.
//

#import "ViewController.h"
#import "SPNSTimerVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)enterBtnClick:(id)sender {
    
    SPNSTimerVC *timerVC = [[SPNSTimerVC alloc]init];
    
    [self presentViewController:timerVC animated:YES completion:nil];
}




@end
