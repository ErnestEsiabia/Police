//
//  ViewController.h
//  calc
//
//  Created by ilabadmin on 6/29/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

float result;
IBOutlet UILabel *calculatorScreen;
int currentOperation;
float currentNumber;
}

-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;

@end

