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
    int number;
    NSString * firstName;
    NSString * lastName;
    NSInteger * fouls;
    int jerseyNumber;
    
}

@property (nonatomic) NSInteger * number;
@property (nonatomic) NSInteger * fouls;
@property (nonatomic) int jerseyNumber;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

-(id)initWithFirstName:(NSString *)fName lastName:(NSString *) lName;
-(id)initWithFirstName:(NSString *)fName lastName:(NSString *) lName jerseyNumber:(int) jNumber;
-(NSString *)PlayerNameWithJerseyNumber;
@end
