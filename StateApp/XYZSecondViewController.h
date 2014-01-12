//
//  XYZSecondViewController.h
//  StateApp
//
//  Created by Joe Selvik on 1/12/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZStateAppThirdViewController.h"

@interface XYZSecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *myTextView;
@property (strong, nonatomic) UIViewController *thirdViewController;

- (IBAction)displayVC3:(id)sender;

@end
