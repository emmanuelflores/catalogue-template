//
//  ScrollViewController.h
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface ScrollViewController : UIViewController <UIScrollViewDelegate> {
    CGFloat viewWidth;
    CGFloat viewHeight;
}

@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) RootViewController *firstPageViewController;
@property (nonatomic,retain) RootViewController *secondPageViewController;

@end
