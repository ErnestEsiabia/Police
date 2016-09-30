//
//  DataSouuce.h
//  Democracy
//
//  Created by ilabadmin on 7/25/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface DataSouuce : NSObject
{
    AppDelegate *delegate;
    NSURLConnection * connection;

}

@property(nonatomic,retain) AppDelegate *delegate;

-(NSMutableArray *) selectFromJson:(NSString *)title;
+(NSString *) baseAPIUrl;
-(NSString *) getJsonDataString: (NSString *)urlParam;

@end
