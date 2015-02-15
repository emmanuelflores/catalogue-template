//
//  ModalButton6ViewController.h
//  Gentleman
//
//  Created by efe on 8/7/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModalButton6ViewController : UIViewController<UIGestureRecognizerDelegate,UIWebViewDelegate>{
    IBOutlet UIWebView *webView;
}

@property (nonatomic,retain) NSURL *mUrl;

@end
