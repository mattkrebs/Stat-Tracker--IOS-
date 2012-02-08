//
//  Player.m
//  StatTrackr
//
//  Created by Matt Krebs on 2/7/12.
//  Copyright (c) 2012 Ratchet. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize firstName = _firstName, lastName = _lastName, fouls = _fouls, number = _number;


-(id)initWithFirstName:(NSString *)fName lastName:(NSString *) lName{
    self.firstName = fName;
    self.lastName = lName;
    
    return self;
}
@end
