//
//  SearchViewController.h
//  Democracy
//
//  Created by ilabadmin on 7/21/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *TableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (strong, nonatomic) NSMutableArray *masterFilmList;

@end
