//
//  ViewController.m
//  Tab2
//
//  Created by Kvana Mac Pro 2 on 1/20/16.
//  Copyright © 2016 Kvana Mac Pro 2. All rights reserved.
//

#import "ViewController.h"
#import "MainTabBarViewController.h"
@interface ViewController ()

@end

@implementation ViewController{
    UIButton *button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    button=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor=[UIColor redColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotNotification:) name:@"updateContent" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gotNotification:(NSNotification*)notification{
    [button setTitle:notification.object forState:UIControlStateNormal];
}

-(void)buttonAction{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    MainTabBarViewController *tabVC=[mainStoryboard instantiateViewControllerWithIdentifier:@"MainTabBarViewController"];
    [self.navigationController pushViewController:tabVC animated:YES];
}

@end
