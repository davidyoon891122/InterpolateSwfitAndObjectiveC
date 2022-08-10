//
//  ViewController.m
//  InterpolateSwiftToObjectiveC
//
//  Created by iMac on 2022/08/10.
//

#import "MainViewController.h"
#import "InterpolateSwiftToObjectiveC-Swift.h"

@interface MainViewController ()

@end

@implementation MainViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBackgroundColor];
    [self createButton];
    [self configureNavigation];
}

- (void)createButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button setTitle:@"DefaultButton" forState:UIControlStateNormal];
    [button
     addTarget:self
     action: @selector(didTapButtonAction)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];

    [button.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor constant: 0.0].active = YES;
    [button.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant:0.0].active = YES;
}

- (void)configureNavigation {
    self.navigationItem.title = @"MainViewController";
}

- (void)didTapButtonAction {
    NSLog(@"didTapButtonAction");
    UIViewController *nextViewController = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated: YES];
}

@end
