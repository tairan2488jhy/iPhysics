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
               @"Acceleration",
               @"Kinematics equations",
               @"Relative motion",
               @"Chain rule",
               @"Projectile motion"];
    
    _Definition = @[@"Scalare quantities fully describe magnitude. For example, 3 meters or 34°C",
                    @"Vector quantities are physical quantities that have both direction and magnitude. For example 5 meters east.",
                    @"Describes how much an objects position has changed.",
                    @"Describes how much an object moves.",
                    @"Velocity is the rate of change of the displacement of an object, or the difference in final and initiall velocities.",
                    @"Acceleration is the rate of change in velocity of an object.",
                    @"The 5 basic equations can be used to solve kinematics problems. The can be derived by the velocity, acceleration and displacement equations.",
                    @"Relative motion is examining the motion of an object with respect to another. To do this we use special variables like aVb, which is velocity of a with respect to b.",
                    @"The chain rule is used to determine relative velocities. \naVc = aVb + bVc.",
                    @""];
    
    _Proporties = @[@"A scalar's measurment is defined by a number called the module or intensity.",
                    @"A scalar's measurment is defined by a number called the module or intensity.",
                    @"It is a vector, and its standard unit is the metre (m).\nDisplacement can be calculated by the difference in position relative to one point \n\nΔd = d₂ - d₁",
                    @"It is a scalar, and its standard unit is the metre (m).",
                    @"Velocity is a vector quantity. It is described with a speed in m/s and a direction. \n\nCalculate average velocity \nv = Δd / Δt \n\nInstantaneous velocity \nv = lim(t→0) Δd / Δt",
                    @"Acceleration is a vector quantity. It is described with an acceleration rate measured in m/s² and a direction. Acceleration is the result of all forces acting on an object which is shown by Newton's second law of motion; Fnet = ma.\n\nAverage acceleration\na = Δv / Δt \n\nInstantaneous acceleration\na = lim(t→0) Δv / Δt",
                    @"We know that acceleration is the change in velocity divided by the change in time. This is equivalent to saying that the acceleration is the slope of the graph of velocity. If we start with the equation: \n\na = (v₂-v₁)/Δt \n\nThen we can rearrange to issolate for v₂. \n\nv₂ = v₁ + aΔt \n\nWe can also derive a fairly simple formula for the change in displacement by finding the area of a trapezoid underneath a linear funtion of velocity. Doing so, we get: \n\nΔd = ((v₁ + v₂)/2) x Δt \n\nNotice that the formula for acceleration shows up in the formula for displacement, thus we may rewrite the equation as: \n\nΔd = v₁Δt + ½aΔt² \n\nThis is actually equivalent to: \n\nΔd = v₂Δt - ½aΔt² \n\nStarting from the equation for v₂, and squaring both sides, results in the following equation: \n\nv₂² = v₁² + 2aΔd",
                    @"Examples: \nbVw is the velocity of the boat with respect to the water. \npVa is the velocity of the plant with respect to the air. \ncVg is the veolcity of the car with respect to the ground. \n\nThe subscripts are arbetrary. You can use any subscript you choose. \n\nCommon terminology: \n'Air speed' is velocity of object with respect to air, oVa. \n'Wind' is the air velocity with respect to the ground, aVg. \n'Current' is the velocity of water with respect to the ground, wVg.",
                    @"Example: A boat is travelling at 14km/h[E] with respect to the water of a river. The current is flowing 9km/h[E]. A child is walking from the front of the rear of the boat at 6km/h[W] with respect to the boat. What is the child’s velocity with respect to the ground? \n\nWe let b represent the boat, w represent the water, g represent the ground and c represent the child. We are given: \nbVw = 14km/h[E] \nwVg = 9km/h[E] \ncVb = 6km/h[W] \nWe want to know cVg \n\ncVg = cVb + bVw + wVg = 17km/h[E].",
                    @""];
	
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
