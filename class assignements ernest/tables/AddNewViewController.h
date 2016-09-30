//
//  AddNewViewController.h
//  tables
//
//  Created by ilabadmin on 7/15/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNewViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtimage;
@property (weak, nonatomic) IBOutlet UITextField *textdescribe;
@property (weak, nonatomic) IBOutlet UITextField *txtname;

- (IBAction)addNewLanguage: (id)sender;

@end
