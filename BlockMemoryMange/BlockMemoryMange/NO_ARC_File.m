//
//  NO_ARC_File.m
//  BlockMemoryMange
//
//  Created by chen on 14-11-26.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "NO_ARC_File.h"
#import "BlockeObj.h"

@interface NO_ARC_File ()

@end

@implementation NO_ARC_File

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    BlockeObj *testA =[[BlockeObj alloc] initBlock:^{
        
        [testA action];
        
        [ testA release];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
