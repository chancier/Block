//
//  ViewController.m
//  BlockMemoryMange
//
//  Created by chen on 14-11-26.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "ViewController.h"
#import "NO_ARC_File.h"
#import "BlockeObj.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
      错误
     */
    BlockeObj *testA =[[BlockeObj alloc] initBlock:^{
        [testA action];
        [self action:nil]; //这样即使调用的self 自身类的release 方法，只要这个block没有执行完，self也不会释放。
    }];
    
    
    __block typeof (self) bself = self;
    BlockeObj *testB =[[BlockeObj alloc] initBlock:^{
        [testB action];
        [bself action:nil]; //注意这里的区别
    }];
    
}
- (IBAction)action:(id)sender
{
    NO_ARC_File *file = [[NO_ARC_File alloc]init];
    [self presentViewController:file animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
