//
//  DetailsViewController.h
//  tables
//
//  Created by ilabadmin on 7/19/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Language.h"

@interface DetailsViewController : UIViewController
@property(nonatomic, strong) Language * languages;

@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
