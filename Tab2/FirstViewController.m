//
//  FirstViewController.m
//  Tab2
//
//  Created by Kvana Mac Pro 2 on 1/20/16.
//  Copyright © 2016 Kvana Mac Pro 2. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:@"updateContent" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNewMeesage:) name:@"newMessage" object:nil];
}
-(void)handleNotification:(NSNotification*)notification{
    if ([notification.name isEqualToString:@"newMessage"]) {
        
    }else if ([notification.name isEqualToString:@"updateContent"]){
        self.label.text=notification.object;

    }
}
-(void)handleNewMeesage:(NSNotification*)notification{
    
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
