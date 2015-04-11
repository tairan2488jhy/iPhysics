//
//  CalculatorViewController.m
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2015-04-06.
//  Copyright (c) 2015 DP Develoers. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (IBAction)number0:(id)sender {
    selectNumber *= 10;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number1:(id)sender {
    selectNumber *= 10;
    selectNumber ++;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number2:(id)sender {
    selectNumber *= 10;
    selectNumber += 2;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number3:(id)sender {
    selectNumber *= 10;
    selectNumber += 3;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number4:(id)sender {
    selectNumber *= 10;
    selectNumber += 4;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number5:(id)sender {
    selectNumber *= 10;
    selectNumber += 5;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number6:(id)sender {
    selectNumber *= 10;
    selectNumber += 6;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number7:(id)sender {
    selectNumber *= 10;
    selectNumber += 7;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number8:(id)sender {
    selectNumber *= 10;
    selectNumber += 8;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)number9:(id)sender {
    selectNumber *= 10;
    selectNumber += 9;
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)clear:(id)sender {
    method = 0;
    total = 0;
    selectNumber = 0;
    
    display.text = [NSString stringWithFormat:@"%d", selectNumber];
}
- (IBAction)multiply:(id)sender {
    if (total == 0) {
        total = selectNumber;
    }
    else {
        switch (method) {
            case 1:
                total *= selectNumber;
                break;
            case 2:
                total /= selectNumber;
                break;
            case 3:
                total -= selectNumber;
                break;
            case 4:
                total += selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 1;
    
    selectNumber = 0;
}
- (IBAction)divide:(id)sender {
    if (total == 0) {
        total = selectNumber;
    }
    else {
        switch (method) {
            case 1:
                total *= selectNumber;
                break;
            case 2:
                total /= selectNumber;
                break;
            case 3:
                total -= selectNumber;
                break;
            case 4:
                total += selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 2;
    selectNumber = 0;
}
- (IBAction)subtract:(id)sender {
    if (total == 0) {
        total = selectNumber;
    }
    else {
        switch (method) {
            case 1:
                total *= selectNumber;
                break;
            case 2:
                total /= selectNumber;
                break;
            case 3:
                total -= selectNumber;
                break;
            case 4:
                total += selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 3;
    selectNumber = 0;
}
- (IBAction)add:(id)sender {
    if (total == 0) {
        total = selectNumber;
    }
    else {
        switch (method) {
            case 1:
                total *= selectNumber;
                break;
            case 2:
                total /= selectNumber;
                break;
            case 3:
                total -= selectNumber;
                break;
            case 4:
                total += selectNumber;
                break;
                
            default:
                break;
        }
    }
    method = 4;
    selectNumber = 0;
}
- (IBAction)equal:(id)sender {
    if (total == 0) {
        total = selectNumber;
    }
    else {
        switch (method) {
            case 1:
                total *= selectNumber;
                break;
            case 2:
                total /= selectNumber;
                break;
            case 3:
                total -= selectNumber;
                break;
            case 4:
                total += selectNumber;
                break;
                
            default:
                break;
        }
    }
    
    method = 0;
    selectNumber = 0;
    display.text = [NSString stringWithFormat:@"%.2f", total];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
