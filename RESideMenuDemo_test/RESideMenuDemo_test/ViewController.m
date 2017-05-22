//
//  ViewController.m
//  RESideMenuDemo_test
//
//  Created by Saltedfish on 2017/5/22.
//  Copyright © 2017年 物联利浪. All rights reserved.
//

#import "ViewController.h"
#import "RESideMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"首页";
    
    UIImageView *bgImgView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bgImgView.image = [UIImage imageNamed:@"Balloon"];
    [self.view addSubview:bgImgView];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"nemu"] style:UIBarButtonItemStylePlain target:self action:@selector(leftItemClick)];
    
    
}


- (void)leftItemClick
{
     [self.sideMenuViewController presentLeftMenuViewController];
}


@end
