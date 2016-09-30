//
//  ViewController.m
//  login
//
//  Created by ilabadmin on 11/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    infodictionary =[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"password",nil]forKeys:[NSArray arrayWithObjects:@"username", nil ]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttontapped:(id)sender {
    if([[infodictionary objectForKey:_usernameField.text] isEqualToString:_passwordField.text]){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Correct Password"  message:@"the password is corect" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil ];
        [alert show];
    
    } else {
         UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Incorrect Password"  message:@"the password is incorect" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil ];
        
        
    }
    
}
@end
