//
//  Card.h
//  Matchismo
//
//  Created by Thiago Rosa on 2/8/14.
//  Copyright (c) 2014 Thiago Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
