//
//  MainTableViewController.m
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2015-01-29.
//  Copyright (c) 2015 DP Develoers. All rights reserved.
//

#import "MainTableViewController.h"
#import "TableCell.h"
#import "ViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.tableView.separatorColor = [UIColor colorWithRed:84/255.0 green:84/255.0 blue:84/255.0 alpha:0.5];
    //self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"eyePhysics background.png"]];
	
	UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
	[[self navigationItem] setBackBarButtonItem:newBackButton];
	
    _Title = @[@"Scalar quantities",
               @"Vector quantites",
               @"Displacement",
               @"Distance",
               @"Velocity",
               @"Acceleration"];
    
    _Definition = @[@"Scalare quantities fully describe magnitude. For example, 3 meters or 34°C",
                    @"Vector quantities are physical quantities that have both direction and magnitude. For example 5 meters east.",
                    @"Describes how much an objects position has changed.",
                    @"Describes how much an object moves.",
                    @"Velocity is the rate of change of the displacement of an object, or the difference in final and initiall velocities.",
                    @"Acceleration is the rate of change in velocity of an object."];
    
    _Proporties = @[@"A scalar's measurment is defined by a number called the module or intensity.",
                    @"A scalar's measurment is defined by a number called the module or intensity.",
                    @"It is a vector, and its standard unit is the metre (m).",
                    @"It is a scalar, and its standard unit is the metre (m).",
                    @"Velocity is a vector quantity. It is described with a speed in m/s and a direction.1",
                    @"Acceleration is a vector quantity. It is described with an acceleration rate measured in m/s^2 and a direction. Acceleration is the result of all forces acting on an object which is shown by Newton's second law of motion; F_net = ma.\n\nAverage acceleration\na_av = \Delta V / \Delta t \n\nInstantaneous acceleration\na = lim_t->0 \Delta V / \Delta t \n\n"];
	
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _Title.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"TableCell";
    TableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
	long row = [indexPath row];
	
	cell.titleLable.text = _Title[row];
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([[segue identifier] isEqualToString:@"showDetails"]) {
		ViewController *detailViewController = [segue destinationViewController];
		
		NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
		
		long row = [myIndexPath row];
		detailViewController.detailModal = @[_Title[row],
											 _Definition[row],
											 _Proporties[row],];
	}
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
