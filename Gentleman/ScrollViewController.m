//
//  ScrollViewController.m
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import "ScrollViewController.h"
#import "RootViewController.h"

@interface ScrollViewController ()

@end


@implementation ScrollViewController

@synthesize scrollView;
@synthesize firstPageViewController;
@synthesize secondPageViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        
        viewWidth = screenRect.size.width;
        viewHeight = screenRect.size.height;
        
        self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        self.scrollView.contentSize = CGSizeMake(viewWidth, viewHeight * 2);
        self.scrollView.pagingEnabled = YES;
        self.scrollView.minimumZoomScale = 1.0;
        self.scrollView.maximumZoomScale = 1.0;
        
        self.scrollView.delegate = self;
        
        [self.view addSubview:self.scrollView];
        
        self.firstPageViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
        self.secondPageViewController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
        
        self.firstPageViewController.daddy = self;
        self.secondPageViewController.daddy = self;
        

        //self.secondPageViewController.view.backgroundColor = [UIColor redColor];
        
        [self.scrollView addSubview:self.firstPageViewController.view];
        [self.scrollView addSubview:self.secondPageViewController.view];
        

        
    }
    return self;
}

- (void)viewWillLayoutSubviews {
    [self.firstPageViewController.view setFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    [self.secondPageViewController.view setFrame:CGRectMake(0, viewHeight, viewWidth, viewHeight)];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)AScrollView {
    return AScrollView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
