//
//  ViewController.m
//  Stop Watch
//
//  Created by Zain Hatim on 9/12/15.
//  Copyright (c) 2015 Zain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resume.hidden = YES;
    self.Pause.hidden = YES;
    self.restart.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButn:(UIButton *)sender {
    counter = 0;
    self.start.hidden = YES;
    self.Pause.hidden = NO;
    self.displayTimer.text = [NSString stringWithFormat:@"%i",counter];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(incrementer) userInfo:nil repeats:YES];
}

- (IBAction)resumeButn:(UIButton *)sender {
    self.Pause.hidden = NO;
    self.resume.hidden = YES;
    self.restart.hidden = YES;
    self.displayTimer.text = [NSString stringWithFormat:@"%i",counter];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(incrementer) userInfo:nil repeats:YES];
}
- (IBAction)stopButn:(UIButton *)sender {
    self.resume.hidden = YES;
    self.start.hidden = NO;
    self.restart.hidden = YES;
    [timer invalidate];
    self.displayTimer.text = [NSString stringWithFormat:@"%i",0];
}
-(void) incrementer{
    counter++;
    self.displayTimer.text = [NSString stringWithFormat:@"%i",counter];
}
- (IBAction)pauseButn:(UIButton *)sender {
    self.Pause.hidden = YES;
    self.resume.hidden = NO;
    self.restart.hidden = NO;
    [timer invalidate];
}
@end
