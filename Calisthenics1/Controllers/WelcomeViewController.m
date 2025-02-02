//
//  ViewController.m
//  Calisthenics1
//
//  Created by makis mantzinos on 2/2/25.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) NSString *fullText;
@property (nonatomic) NSInteger charIndex;
@property (strong, nonatomic) NSTimer *letterTimer;
@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set the full text
    self.fullText = @"🏋Calisthenics";
    self.titleLabel.text = @""; // Start with an empty label
    self.charIndex = 0;

    // Start the animation
    self.letterTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animateText) userInfo:nil repeats:YES];
}

- (void)animateText {
    if (self.charIndex < self.fullText.length) {
        // Get the next character and append it to the label
        self.titleLabel.text = [self.fullText substringToIndex:self.charIndex + 1];
        self.charIndex++;
    } else {
        // Stop the timer when the full text is displayed
        [self.letterTimer invalidate];
        self.letterTimer = nil;
    }
}

@end

