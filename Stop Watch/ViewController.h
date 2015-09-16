//
//  ViewController.h
//  Stop Watch
//
//  Created by Zain Hatim on 9/12/15.
//  Copyright (c) 2015 Zain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int counter;
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *displayTimer;
- (IBAction)startButn:(UIButton *)sender;
- (IBAction)resumeButn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *resume;
- (IBAction)stopButn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *start;
- (IBAction)pauseButn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *Pause;
@property (weak, nonatomic) IBOutlet UIButton *restart;


@end

