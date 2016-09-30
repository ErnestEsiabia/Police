//
//  DetailsViewController.m
//  tables
//
//  Created by ilabadmin on 7/19/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController
@synthesize languages=_languages;
@synthesize image=_image, lbl1=_lbl1,lbl2=_lbl2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_image setImage:[UIImage imageNamed:_languages.image]];
    [_lbl1 setText:_languages.name];
    _lbl2.text=_languages.description;
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
