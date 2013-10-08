//
//  IAViewController.m
//  Hello Time
//
//  Created by JP Bader on 10/1/13.
//  Copyright (c) 2013 JP Bader. All rights reserved.
//

#import "IAViewController.h"

@interface IAViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation IAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self checkTime:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)checkTime:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"h:mm:ss a"];
    [self.timeLabel setText:[formatter stringFromDate:[NSDate date]]];
    
    [self performSelector:@selector(checkTime:) withObject:self afterDelay:1.0];
    
}

@end
