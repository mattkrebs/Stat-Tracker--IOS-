//
//  FirstViewController.m
//  StatTrackr
//
//  Created by Matt Krebs on 2/6/12.
//  Copyright (c) 2012 Ratchet. All rights reserved.
//

#import "FirstViewController.h"
#import "Player.h"

@implementation FirstViewController
@synthesize aPlayers, hPlayers;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    hPlayers = [[NSMutableArray alloc]initWithObjects:[[Player alloc] initWithFirstName:@"Matt" lastName:@"Krebs"], 
                [[Player alloc] initWithFirstName:@"Sam" lastName:@"Snead"], 
                [[Player alloc] initWithFirstName:@"Robb" lastName:@"Akerson"],
                [[Player alloc] initWithFirstName:@"George" lastName:@"Hilal"], 
                [[Player alloc] initWithFirstName:@"Courney" lastName:@"Love"], nil];
    aPlayers = [[NSMutableArray alloc]initWithObjects:@"Michelle Krebs", @"Sarah Akerson", @"Andrea Hilal",@"Courtney Love", @"Janet Snead", nil];
    
    UITableView *homeTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    homeTable.tag = 1;
    homeTable.delegate = self;
    homeTable.dataSource = self;
    
    UITableView *awayTable = [[UITableView alloc] initWithFrame:CGRectMake(300, 0, 200, 300)];
    awayTable.tag = 2;
    awayTable.delegate = self;
    awayTable.dataSource = self;
    
    [self.view addSubview:homeTable];
    [homeTable reloadData];
    [self.view addSubview:awayTable];
    [awayTable reloadData];

    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return [hPlayers count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    static NSString *MyIdentifier = @"CellIdentity";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] init];
        if(tableView.tag == 1){
            Player * player = (Player *)[hPlayers objectAtIndex:indexPath.row];
            NSLog(@"%@ %@", player.firstName, player.lastName);
            cell.textLabel.text = player.firstName;
        }else{
            NSLog(@"%@", [aPlayers objectAtIndex:indexPath.row]);
            cell.textLabel.text = [aPlayers objectAtIndex:indexPath.row];
        }
    }
    return cell;

}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
