//
//  ViewController.h
//  tables
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailsViewController.h"


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
//@property (weak, nonatomic) IBOutlet UITableView * myTableView;

@end

