//
//  XYZStateAppThirdViewController.m
//  StateApp
//
//  Created by Joe Selvik on 1/12/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import "XYZStateAppThirdViewController.h"

@interface XYZStateAppThirdViewController ()

@end

@implementation XYZStateAppThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.restorationIdentifier = @"thirdViewController";
    self.restorationClass = [self class];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    UIViewController * myViewController =
    [[XYZStateAppThirdViewController alloc]
     initWithNibName:@"XYZStateAppThirdViewController"
     bundle:nil];
    
    return myViewController;
}

@end
