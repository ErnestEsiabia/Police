//
//  ViewController.h
//  maps
//
//  Created by ilabadmin on 10/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
- (IBAction)mapType:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *currentLocation;
- (IBAction)searchButton:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;



@end

