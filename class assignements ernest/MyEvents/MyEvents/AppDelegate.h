//
//  AppDelegate.h
//  MyEvents
//
//  Created by Ernest Esiabia on 27/09/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

