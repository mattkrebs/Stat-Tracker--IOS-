//
//  FirstViewController.h
//  StatTrackr
//
//  Created by Matt Krebs on 2/6/12.
//  Copyright (c) 2012 Ratchet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray * hPlayers;
    NSMutableArray * aPlayers;
    
}
@property (nonatomic, retain) NSMutableArray * hPlayers;
@property (nonatomic, retain) NSMutableArray * aPlayers;
@end
