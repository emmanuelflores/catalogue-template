//
//  ViewController.h
//  Gentleman
//
//  Created by ; on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MTMetroButton;
@class ScrollViewController;

@interface RootViewController : UIViewController<UIGestureRecognizerDelegate>{
    IBOutlet MTMetroButton *button1,*button2,*button3,*button4, *button5;
    IBOutlet MTMetroButton *button6, *button7, *button8, *button9, *button10;
    IBOutlet MTMetroButton *button11, *button12;
    
    IBOutlet UILabel *gentlemanLabel;
    IBOutlet UILabel *dreamLabel;
    
}

@property (nonatomic,weak) ScrollViewController *daddy;

-(IBAction)youPressedMe:(id)sender;

-(IBAction)pressButton1Modal:(id)sender;
-(IBAction)pressButton2Modal:(id)sender;
-(IBAction)pressButton3Modal:(id)sender;
-(IBAction)pressButton4Modal:(id)sender;
-(IBAction)pressButton5Modal:(id)sender;
-(IBAction)pressButton6Modal:(id)sender;
-(IBAction)pressButton7Modal:(id)sender;
-(IBAction)pressButton8Modal:(id)sender;
-(IBAction)pressButton9Modal:(id)sender;
-(IBAction)pressButton10Modal:(id)sender;
-(IBAction)pressButton11Modal:(id)sender;
-(IBAction)pressButton12Modal:(id)sender;

@end
