//
//  ViewController.h
//  login
//
//  Created by ilabadmin on 11/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSDictionary *infodictionary;
    
}
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;

- (IBAction)buttontapped:(id)sender;


@end

