//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Thiago Rosa on 2/8/14.
//  Copyright (c) 2014 Thiago Rosa. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck {
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        if (self.flipCount < [PlayingCard maxRank]*[[PlayingCard validSuits] count]*2 - 1) {
            UIImage *cardImage = [UIImage imageNamed:@"cardback"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];
            self.flipCount++;
        }
        else {
            [sender setBackgroundImage:nil forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];
            self.flipCount++;
        }
    } else {
        PlayingCard *card = (PlayingCard *)[self.deck drawRandomCard];
        if (card) {
            UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:[NSString stringWithFormat:@"%@%@", [PlayingCard rankStrings][card.rank], card.suit] forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}


@end
