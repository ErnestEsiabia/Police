//
//  ViewController.m
//  helooworld
//
//  Created by ilabadmin on 6/28/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)callthem:(id)sender {
    self.lblhelooworld.text = @"good morning";
}
@end
