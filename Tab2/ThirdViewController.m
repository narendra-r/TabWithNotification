//
//  ThirdViewController.m
//  Tab2
//
//  Created by Kvana Mac Pro 2 on 1/20/16.
//  Copyright © 2016 Kvana Mac Pro 2. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sendMessage:(id)sender {
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"newMessage" object:self.inputTF.text];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateContent" object:self.inputTF.text];

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
