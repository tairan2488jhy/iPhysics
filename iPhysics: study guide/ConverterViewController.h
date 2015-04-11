//
//  ConverterViewController.h
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2015-04-06.
//  Copyright (c) 2015 DP Develoers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConverterViewController : UIViewController {
    IBOutlet UIPickerView *unitsIn;
    IBOutlet UIPickerView *unitsOut;
    
    IBOutlet UIButton *convertButton;
    IBOutlet UILabel *numOut;
    IBOutlet UITextField *numIn;
    
    NSArray *units;
    NSString *selected;
    
    double toConvert;
    long select;
}

- (IBAction)convert:(id)sender;

@property (retain, nonatomic) IBOutlet UIPickerView *unitsOut;
@property (retain, nonatomic) IBOutlet UIPickerView *unitsIn;
@property (retain, nonatomic) NSArray *units;

@end
