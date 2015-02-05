//
//  ViewController.m
//  iPhysics: study guide
//
//  Created by Dilpreet Chana on 2014-08-29.
//  Copyright (c) 2014 DP Develoers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_definitionLable.text = _detailModal[1];
	_proportyLable.text = _detailModal[2];
	
	self.navigationItem.title = _detailModal[0];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
