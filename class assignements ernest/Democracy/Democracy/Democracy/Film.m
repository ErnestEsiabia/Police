//
//  Film.m
//  Democracy
//
//  Created by ilabadmin on 7/22/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "Film.h"

@implementation Film

@synthesize title =_title, year=_year, imdbID=_idmID, type=_type;
-(NSMutableArray *) films{
    
    if (!_films){
        _films = [[NSMutableArray alloc]init];
    }
    return _films;
}
//..dictionarry like hash map in java
-(instancetype) initWithAttrabutes: (NSDictionary *) attributes {
    
    self = [super init];
    
    if (self) {
        self.title = [attributes objectForKey: kTitle];
        self.year = [attributes objectForKey: kYear];
        self.imdbID = [attributes objectForKey: kimdbID];
        self.poster = [attributes objectForKey: kPoster];
        self.type = [attributes objectForKey: kType];
    }
    return self;
}
@end
