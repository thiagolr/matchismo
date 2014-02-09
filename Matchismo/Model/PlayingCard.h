//
//  PlayingCard.h
//  Matchismo
//
//  Created by Thiago Rosa on 2/9/14.
//  Copyright (c) 2014 Thiago Rosa. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
