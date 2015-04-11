//
//  CalculatorViewController.h
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2015-04-06.
//  Copyright (c) 2015 DP Develoers. All rights reserved.
//

#import <UIKit/UIKit.h>

int method;
int selectNumber;

double total;

@interface CalculatorViewController : UIViewController {
    IBOutlet UILabel *display;
}

- (IBAction)number1:(id)sender;
- (IBAction)number2:(id)sender;
- (IBAction)number3:(id)sender;
- (IBAction)number4:(id)sender;
- (IBAction)number5:(id)sender;
- (IBAction)number6:(id)sender;
- (IBAction)number7:(id)sender;
- (IBAction)number8:(id)sender;
- (IBAction)number9:(id)sender;
- (IBAction)number0:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)clear:(id)sender;

@end
