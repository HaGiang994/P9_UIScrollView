//
//  ViewController.m
//  SimpleScrollView
//
//  Created by MacPro1 on 3/1/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import "ViewController.h"
#import "CustomScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomScrollView *mainView = [[CustomScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:mainView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20.f, 20.f, 100.f, 100.f)];
    redView.backgroundColor = [UIColor colorWithRed:0.815f green:0.007f blue:0.105f alpha:1.f];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150.f, 160.f, 150.f, 200.f)];
    greenView.backgroundColor = [UIColor colorWithRed:0.494f green:0.827f blue:0.129f alpha:1.f];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40.f, 400.f, 200.f, 150.f)];
    blueView.backgroundColor = [UIColor colorWithRed:0.29f green:0.564f blue:0.886f alpha:1.f];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100.f, 600.f, 180.f, 150.f)];
    yellowView.backgroundColor = [UIColor colorWithRed:0.972f green:0.905f blue:0.109f alpha:1.f];
    
    [mainView addSubview:redView];
    [mainView addSubview:greenView];
    [mainView addSubview:blueView];
    [mainView addSubview:yellowView];
    
    mainView.contentSize = CGSizeMake(CGRectGetWidth(mainView.frame),
                                      CGRectGetMaxY(yellowView.frame) + 100.f);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
