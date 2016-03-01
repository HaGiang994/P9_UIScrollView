//
//  ViewController.m
//  UIScrollViewTest
//
//  Created by MacPro1 on 3/1/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ViewController
@synthesize imageView;
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.imageView.image.size;
    self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
}

-(UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    // return which subview we want to zoom
    return self.imageView;
}

- (void)viewDidUnload{
    [self setImageView:nil];
    [self setScrollView:nil];
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
