//
//  ModalButton7ViewController.m
//  Gentleman
//
//  Created by efe on 8/7/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import "ModalButton7ViewController.h"


/*
 
 ATTENTION HERE
 THIS IS NOT A RESPONSIVE HTML MODAL VIEW!!
 */

@interface ModalButton7ViewController ()

@end

@implementation ModalButton7ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:self.mUrl];
    [webView loadRequest:request];
    
//    [self.view setBackgroundColor:[UIColor colorWithRed:1.0 green:0.9 blue:0.8 alpha:1.0]];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    webView.userInteractionEnabled = YES;
    
//    [self.view setBackgroundColor:[UIColor colorWithRed:1.0 green:0.9 blue:0.8 alpha:1.0]];
    
    UISwipeGestureRecognizer *mSwipeUpRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(returnToRootViewController:)];
    
    [mSwipeUpRecognizer setDirection:(UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown | UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight)];
    
    [[self view] addGestureRecognizer:mSwipeUpRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)returnToRootViewController:(UISwipeGestureRecognizer *)recognizer {
    [self.navigationController popToRootViewControllerAnimated:YES];

    //
//    //[self dismissViewControllerAnimated:YES completion:nil];
//    
//    CATransition *transition = [CATransition animation];
//    transition.duration = 0.35;
//    transition.timingFunction =
//    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.type = kCATransitionMoveIn;
//    transition.subtype = kCATransitionFromLeft;
//    
//    // NSLog(@"%s: controller.view.window=%@", _func_, controller.view.window);
//    UIView *containerView = self.view.window;
//    [containerView.layer addAnimation:transition forKey:nil];
//    
//    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
