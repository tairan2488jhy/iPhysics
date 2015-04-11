//
//  ConverterViewController.m
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2015-04-06.
//  Copyright (c) 2015 DP Develoers. All rights reserved.
//

#import "ConverterViewController.h"

@interface ConverterViewController ()

@end

@implementation ConverterViewController

@synthesize units, unitsIn, unitsOut;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *unitArray = [[NSArray alloc] initWithObjects:
                          @"Millimeter",
                          @"Centimeter",
                          @"Meter",
                          @"Kilometer", nil];
    self.units = unitArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *) pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [units count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.units objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    select = row;
    selected = units[row];
    [convertButton setTitle:[NSString stringWithFormat:@"Convert to %@", (units[row])] forState:UIControlStateNormal];
}

- (IBAction)convert:(id)sender {
    //toConvert = numIn.text;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
