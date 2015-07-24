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
               @"Projectile motion",
               @"Forces",
               @"First law of motion",
               @"Second law of motion",
               @"Third law of motion",
               @"Inclined planes",
               @"Newton's law of gravitation",
               @"Energy",
               @"Work"];
    
    _Definition = @[@"Scalar quantities describe magnitude. For example, 3 meters or 34°C.",
                    @"Vector quantities are physical quantities that have both direction and magnitude. For example, 5 meters east.",
                    @"Describes how much an objects position has changed.",
                    @"Describes how much an object moves.",
                    @"Velocity is the rate of change of the displacement of an object, or the difference in final and initial velocities.",
                    @"Acceleration is the rate of change in velocity of an object.",
                    @"The 5 basic equations that can be used to solve motion problems. They can be derived by the velocity, acceleration and displacement equations.",
                    @"Relative motion is the motion of an object with respect to another. To do this we use special variables like aVb, which is velocity of \"a\" with respect to \"b\".",
                    @"The chain rule is used to determine relative velocities. \naVc = aVb + bVc.",
                    @"Projectile motion describes objects traveling on a curved trajectory near the Earth's surfaces, affected by gravity alone. \nExamples include a dirt bike leaving a ramp and flying throught the air, a baseball hit soaring to a homerun.",
                    @"A force is a push or a pull. \n\nThere are 4 fundamental forces in physics: \n1. The force of gravity \n2. The electromagnectic force \n3. The strong nuclear force \n4. The weak nuclear force",
                    @"Objects in motion remain in motion and objects at rest remain at rest unless acted upon by an external force.",
                    @"When an unbalanced force acts on an object, the object will not have a constant velocity and will accelerate.",
                    @"For every action force, there is a simultaneous reaction force equal in magnitude and opposite in direction.",
                    @"An inclined plane is a surface that is not parallel to the ground.",
                    @"Every particle in the universe exerts an attractive force on every other particle. A particle is a piece of matter, small enough in size to be reguarded as a mathematical point; it has a position and a negligible mass.",
                    @"Energy is the ability to do WORK. \nWork is the transfer of energy through the application of a force over a measured distance.",
                    @"Work occurs when a force F is applied over a certain displacement Δd."];
    
    _Proporties = @[@"The measurement of a is defined by a number called the module or intensity.",
                    @"The measurement of a scalar is defined by a number called the module or intensity and the direction in which it is pointing.",
                    @"It is a vector, and its standard unit is metre (m).\nDisplacement can be calculated by the difference in position relative to one point. \n\nΔd = d₂ - d₁",
                    @"It is a scalar, and its standard unit is metre (m).\nDistance is the total amount an object moves.",
                    @"Velocity is a vector quantity. It describes a speed in m/s and a direction. \n\nCalculate average velocity \nv = Δd / Δt.",
                    @"Acceleration is a vector quantity. It is described with an acceleration rate measured in m/s² and a direction. Acceleration is the result of all forces acting on an object which is shown by Newton's second law of motion; Fnet = ma.\n\nAverage acceleration\na = Δv / Δt \n\nInstantaneous acceleration\na = lim(t→0) Δv / Δt",
                    @"We know that acceleration is the change in velocity divided by the change in time. This is equivalent to saying that the acceleration is the slope of the graph of velocity. If we start with the equation: \n\na = (v₂-v₁)/Δt \n\nThen we can rearrange to isolate for v₂. \n\nv₂ = v₁ + aΔt \n\nWe can also derive a fairly simple formula for the change in displacement by finding the area of a trapezoid underneath a linear funtion of velocity. Doing so, we get: \n\nΔd = ((v₁ + v₂)/2) x Δt \n\nNotice that the formula for acceleration shows up in the formula for displacement, thus we may rewrite the equation as: \n\nΔd = v₁Δt + ½aΔt² \n\nThis is actually equivalent to: \n\nΔd = v₂Δt - ½aΔt² \n\nStarting from the equation for v₂, and squaring both sides, results in the following equation: \n\nv₂² = v₁² + 2aΔd",
                    @"Examples: \nbVw is the velocity of the boat with respect to the water. \npVa is the velocity of the plant with respect to the air. \ncVg is the veolcity of the car with respect to the ground. \n\nThe subscripts are arbitrary. You can use any subscript you choose. \n\nCommon terminology: \n'Air speed' is velocity of object with respect to air, oVa. \n'Wind' is the velocity of air with respect to the ground, aVg. \n'Current' is the velocity of water with respect to the ground, wVg.",
                    @"Example: A boat is travelling at 14km/h[E] with respect to the water of a river. The current is flowing 9km/h[E]. A child is walking from the front of the rear of the boat at 6km/h[W] with respect to the boat. What is the child’s velocity with respect to the ground? \n\nWe let b represent the boat, w represent the water, g represent the ground and c represent the child. We are given: \nbVw = 14km/h[E] \nwVg = 9km/h[E] \ncVb = 6km/h[W] \nWe want to know cVg \n\ncVg = cVb + bVw + wVg = 17km/h[E].",
                    @"In each of the above examples, the object moves throught the air without propulsion and follows a 2-D curved trajectory. These objects are called projectiles. \n\nRecall: \nΔv = v₂ - v₁ \n\nNotice that Δv is always down. Since \n\na = Δv/Δt \nThen the acceleration of a projectile is always down. Why? \n\nSince a projectile has no propulsion system, gravity is the only major force causing acceleration. Therefore the velocity in the x direction (horizontally) is constant and the velocity in the y direction (vertically) always accelerates down. \nWe must analyze a projectile's horizontal and vertical motion independently. \n\nHORIZONTAL MOTION (X) \n\nVelocity is constant \nTherefore acceleration is 0 \nThe motion in the horizontal direction can be modled by this equation: \n\nv = Δdx/Δt \n\nVERTICAL MOTION (Y) \n\nVelocity decreases as the projectile travels up and increases as it moves down. \nTherefore the acceleration near the Earth's surface is downward with a magnitude of 9.81m/s², which was discovered by experimentation and calculation. \nThe motion in the vertical direction can be modeled by these equations: \n\n1. v₂ = v₁ + aΔt \n2. Δd = v₁Δt + ½aΔt² \n3. v₂² = v₁² + 2aΔd",
                    @"Forces are measured in newtons, which is denoted by 'N'. N = kg x m/s² \n\nForce of Gravity \nThe force of gravity is given by the equation Fg = m·g, where m is the mass of the object in kg, and g is the acceleration due to gravity (9.81m/s² on Earth). \n\nThe Normal Force \nThe direction of the normal force is perpendicular to any surface the object is in contact with. It's magnitude is equal to the sum of all force perpendicular to the surface and it's direction is away from the surface. \n\nThe Force of Friction \n- Static friction: exists when a force is applied to an object while at rest. \n- Kinetic friction: exists while the object is moving. \nThe force of friction can be calculated by the following equation, Ff = μ·Fn, where μ is the coefficient of friction between the surfaces in contact with eachother and Fn is the normal force. The coefficient of static friction is always greater than the coefficient of kinetic friction. \nThe force of friction is always in the opposite direction of the object's motion.",
                    @"Newton's first law has many implications: \n\n1. An external force is required to change the velocity of an object \n2. The external forces must be unbalanced \n3. Objects at rest remain at rest unless acted upon by an external force \n4. Moving objects continue to move in a straight line at a constant speed unless acted upon by an external unbalanced force \n\nGalileo published his ideas about motion early in the 17 century. Isaac Newton summarized his own work and that of Galileo in his book 'Principis Mathematica' published in 1687. Newton described what Galilo had discovered about inertia. Because it was included with Newton's other laws of motion, it is often referred to as Newton's first law.",
                    @"The relationship between unbalanced forces and the resulting motion, Fnet = ma: \n- Object will accelerate in the direction in which Fnet (sum of all forces) is applied \n- Fnet is a constant force \n- Acceleration is uniform \n\nWhen the unbalanced force is doubled, the resulting acceleration is doubled as well. \nIf the unbalanced force remains constant but the mass increases, the acceleration decreases.",
                    @"For example, You are pushing on box A which is pushing box B. We can denote the action force (in this example the force A applies on B) as Fa→b and the reaction force (in this example the force B applies to A as a result of Fa→b) as Fb→a. Fa→b = -Fb→a.",
                    @"Inclined planes have many applications, many of which make lifting a mass easier (ex. ramps). Consider a box sitting on a ramp inclined at θ. What will happen if the angle of incline, θ, increases? \n\nSince Fg is the only force causing the box to acclerate, and Fg does not change as θ increases, we must look at the force opposing its motion; the force of friction. \n\nWe know that Ff = μ·Fn. Since μ does not change, we must find Fn, the normal force. \n\nFn is max on a flat surface and decreases until it becomes 0 on a vertical surface, where θ = 90°",
                    @"For two particles that have masses m₁ and m₂ and are separated by a distance r, the force that each exerts on the other is directed along the line joing the particles and has magnitude. It can be modeled by the following equation: \nF = G((m₁m₂)/r²) \nWhere G is the gravitational constant, G = 6.673 x 10^-11 N m² kg⁻². \n\nThe value for G was first measured in an experiment by English scientist Henry Cavendish more than a century after Newton proposed his law of universal gravitation. If we let W be the weight and Me the mass of the Earth and r be the radius of the Earth, we can calculate the force of gravity on objects near the surface of the Earth: \n\nW = G(Me·m)/r²",
                    @"There are nine types of energies: \n\nKINETIC ENERGY \nThe energy of motion. Any object in motion has kinetic energy. \nEk = ½mv² \n\nGRAVITATIONAL POTENTIAL ENERGY \nThe energy of POSITION. Any object that is raised, relative to a reference height has gravitational potential energy. \nEg = mgh \nExample: a roller coaster at the top of a hill. \n\nCHEMICAL POTENTIAL ENERGY \nDifferent atoms joined in different molecules contain varying amounts of energy. During a chemical reaction, new molecules are formed, absorbing or releasing energy. \nExample: TNT \n\nELASTIC POTENTIAL ENERGY \nStored in objects that are stretched or compressed. \nExample: spring \n\nELECTRIC POTENTIAL ENERGY \nForm of energy possessed by charged particles. Particles transfer energy as they move through a closed circuit. \n\nNUCLEAR ENERGY \nEnergy is released when large atoms are split in two (fission) or when small atoms are joined to make larger ones (fusion). E = mc² \n\nSOUND ENERGY \nSound moves in waves through a medium. Sound waves make atoms and molecules vibrate back and forth. \n\nTHERMAL ENERGY \nThe random motion of particles. Warmer particles vibrate faster than cooler ones. \n\nRADIATION ENERGY \nTravels by means of electromagnetic waves through space, and do not involve mass. \nExample: photons",
                    @"To quantify work, we find the product of the force and displacement, where force and displacement are parallel to one another: \n\nW = F·Δd \n\nF - the force and magnitude have the same direction. \nΔd - The magnitude of displacement. Units: m. \nW = Work. Units: N·m = J (joule)"];
	
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
