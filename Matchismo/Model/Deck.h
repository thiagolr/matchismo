//
//  Deck.h
//  Matchismo
//
//  Created by Thiago Rosa on 2/9/14.
//  Copyright (c) 2014 Thiago Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
