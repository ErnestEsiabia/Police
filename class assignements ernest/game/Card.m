//
//  Card.m
//  game
//
//  Created by ilabadmin on 6/29/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card
@synthesize contents = _contents; //instantiating variable we created in interface, setting and getting, variable is contents, instance is _contents
@synthesize chosen =_chosen, marched=_marched;

-(int) match:(NSArray *)othercards{
    int score = 0;
    for (Card *card in othercards){
        
        if ([card.contents isEqualToString:self.contents]){
            score=1;
    }
}
    
    return score;
 

}

@end
