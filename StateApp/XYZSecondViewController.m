//
//  XYZSecondViewController.m
//  StateApp
//
//  Created by Joe Selvik on 1/12/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import "XYZSecondViewController.h"

@interface XYZSecondViewController ()

@end

@implementation XYZSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _thirdViewController = [[XYZStateAppThirdViewController alloc]
                            initWithNibName:@"XYZStateAppThirdViewController"
                            bundle:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - State Preservation Methods

-(void)encodeRestorableStateWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_myTextView.text forKey:@"UnsavedText"];
    [super encodeRestorableStateWithCoder:coder];
}

-(void)decodeRestorableStateWithCoder:(NSCoder *)coder
{
    _myTextView.text = [coder decodeObjectForKey:@"UnsavedText"];
    [super decodeRestorableStateWithCoder:coder];
    
}

- (IBAction)displayVC3:(id)sender {
    [self.navigationController
     pushViewController:_thirdViewController animated:YES];
}

@end
