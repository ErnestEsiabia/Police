//
//  ViewController.h
//  finalcalc
//
//  Created by ilabadmin on 6/30/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)equalPressed:(UIButton *)sender;
- (IBAction)calculationPressed:(id)sender;
- (IBAction)






































































































































































:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
@property (nonatomic) BOOL typingNumber; //check if user is typing a number
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation; // plus or minus operation

@end

