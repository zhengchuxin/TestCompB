//
//  ZCXViewController.m
//  TestCompB
//
//  Created by zhengchuxin on 07/22/2020.
//  Copyright (c) 2020 zhengchuxin. All rights reserved.
//

#import "ZCXViewController.h"

#import "ZCXLookViewController.h"
#import "ZCXCompBMyControllerViewController.h"


@interface ZCXViewController ()

@end

@implementation ZCXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
    
    ZCXLookViewController *vc = [[ZCXLookViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
//    self.view.backgroundColor = [UIColor orangeColor];
//     UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(100, 120, 200, 20)];
//     [btn setTitle:@"快捷卡支付" forState:UIControlStateNormal];
//     [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//     [self.view addSubview:btn];
    

    
}


-(void)click
{
    NSBundle * currentBundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"TestCompB" withExtension:@"bundle"]];
       ZCXCompBMyControllerViewController *vc = [[ZCXCompBMyControllerViewController alloc] initWithNibName:NSStringFromClass([ZCXCompBMyControllerViewController class]) bundle:currentBundle];
       [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}

@end
