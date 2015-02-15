//
//  AppDelegate.h
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollViewController.h"

@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong,nonatomic) ScrollViewController *mainScrollViewController;

@end
