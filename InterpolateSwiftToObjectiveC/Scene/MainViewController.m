//
//  ViewController.m
//  InterpolateSwiftToObjectiveC
//
//  Created by iMac on 2022/08/10.
//

#import "MainViewController.h"
#import "InterpolateSwiftToObjectiveC-Swift.h"

@interface MainViewController () {
    UIButton *nextButton;
    UIButton *getTodayDateButton;
}

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBackgroundColor];

    [self setupViews];

    [self createNextViewButton];
    [self configureNavigation];
    [self createDateButton];
}

- (void) setupViews {
    nextButton = [UIButton buttonWithType:UIButtonTypeCustom];
    getTodayDateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:nextButton];
    [self.view addSubview:getTodayDateButton];
}

- (void)createNextViewButton {
    nextButton.translatesAutoresizingMaskIntoConstraints = NO;

    [nextButton
     setTitle:@"NextView"
     forState:UIControlStateNormal
    ];

    [nextButton
     addTarget:self
     action: @selector(didTapNextButtonAction)
     forControlEvents:UIControlEventTouchUpInside
    ];

    [nextButton.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor constant: 0.0].active = YES;
    [nextButton.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant:0.0].active = YES;
}

- (void)createDateButton {
    getTodayDateButton.translatesAutoresizingMaskIntoConstraints = false;

    [getTodayDateButton
     setTitle:@"DateButton"
     forState:UIControlStateNormal
    ];

    [getTodayDateButton
     addTarget:self
     action:@selector(didTapDisplayDateButtonAction)
     forControlEvents:UIControlEventTouchUpInside
    ];

    [getTodayDateButton.topAnchor constraintEqualToAnchor: nextButton.bottomAnchor constant:8.0].active = YES;
}

- (void)configureNavigation {
    self.navigationItem.title = @"MainViewController";
}

- (void)didTapNextButtonAction {
    NSLog(@"didTapButtonAction");
    UIViewController *nextViewController = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated: YES];
}

- (void)didTapDisplayDateButtonAction {
    DateTool *dateTool = [[DateTool alloc] init];
    [dateTool diplayTodayDate];
    
}

@end
