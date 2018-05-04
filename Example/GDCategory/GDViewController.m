//
//  GDViewController.m
//  GDCategory
//
//  Created by binbins on 07/26/2017.
//  Copyright (c) 2017 binbins. All rights reserved.
//

#import "GDViewController.h"
#import <GDCategory/GDCategory.h>


@interface GDViewController ()

@end

@implementation GDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self testCategory];
}

- (void)testCategory {
    
    //实例方法，通过响应者链的方法来拿到当前view的视图控制器
     UIViewController *parentViewCtrl = [self.view baseViewController];
    
    //类方法，通过递归的方式拿到屏幕最靠上的控制器
    UIViewController *topCtrl = [UIViewController currentViewController];
    
    //实例方法，字符串转为字典或者数组
    NSString *anyString = @"true";
    
    NSLog(@"%@ %@ %@, %@, %d", parentViewCtrl, topCtrl, [anyString toNSArray], [anyString toNSDictionary], [anyString toBOOL]);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
