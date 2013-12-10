//
//  ViewController.m
//  Testbed
//
//  Created by Abdullah Aqeil on 10/16/13.
//  Copyright (c) 2013 Abdullah Aqeil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    IBOutlet UITextView * textView;
    
}

@end

@implementation ViewController

- (void) runTest {
    message(@"Testbed version %@", kTestbedVersion);
    for ( id o in @[@"Klaatu",@"barada",@"nikto"]) {
        message(@"object is %@", o);
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    extern UITextView * messageTextView;
    messageTextView = textView;
    textView.font = [UIFont systemFontOfSize:12];
    [self runTest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
