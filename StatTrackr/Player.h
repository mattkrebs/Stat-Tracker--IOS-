//
//  Player.h
//  StatTrackr
//
//  Created by Matt Krebs on 2/7/12.
//  Copyright (c) 2012 Ratchet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
{
    NSInteger * number;
    NSString * firstName;
    NSString * lastName;
    NSInteger * fouls;
    
}

@property (nonatomic) NSInteger * number;
@property (nonatomic) NSInteger * fouls;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

-(id)initWithFirstName:(NSString *)fName lastName:(NSString *) lName;
@end
