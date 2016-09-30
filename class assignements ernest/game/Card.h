//
//  Card.h
//  game
//
//  Created by ilabadmin on 6/29/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;   // instance variable of type nsstring which is a pointer to memory, strong means retain variable as long as im using it
// nonatomic means the variable is not accesible simultanously
@property (nonatomic, getter=isChosen)BOOL chosen;

@property (nonatomic, getter=isMarch)BOOL marched;

//- (int) match: (Card *)card;        //it is implemented on the .m side

-(int) match:(NSArray *)othercards;

@end
