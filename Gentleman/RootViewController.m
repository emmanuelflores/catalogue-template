//
//  ViewController.m
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import "RootViewController.h"
#import "ScrollViewController.h"
#import "MTMetroButton.h"
#import "UIFont+FlatUI.h"
#import "ModalButton1ViewController.h"
#import "ModalButton2ViewController.h"
#import "ModalButton3ViewController.h"
#import "ModalButton4ViewController.h"
#import "ModalButton5ViewController.h"
#import "ModalButton6ViewController.h"
#import "ModalButton7ViewController.h"
#import "ModalButton8ViewController.h"
#import "ModalButton9ViewController.h"
#import "ModalButton10ViewController.h"
#import "ModalButton11ViewController.h"
#import "ModalButton12ViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize daddy;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[self colorWithRed:118 Green:149 Blue:134 andAlpha:1]];
    
    
    //TESTING BUTTONS
    
    ////    [button1 setBackgroundColor:[UIColor blackColor]];
    ////    button1.titleLabel.font = [UIFont fontWithName:@"Origin-Light" size:42.0];
    //
    //
    //    MTMetroButton *button2 = [[MTMetroButton alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 420.0f, 198.0f)];
    //    button2.backgroundColor = [UIColor whiteColor];
    //    [button2 setTitle:@"Button" forState:UIControlStateNormal];
    //    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //    //button2.titleLabel.font = [UIFont fontWithName:@"Origin-Light" size:12.0f];
    //    button2.titleLabel.font = [UIFont originRegularFontOfSize:40];
    //    [self.view addSubview:button2];
    //
    //    button3.titleLabel.font = [UIFont originRegularFontOfSize:40];
    
    
    //http://www.creativecolorschemes.com/resources/free-color-schemes/beige-tone-color-scheme.shtml
    
    button1.backgroundColor = [self colorWithRed:199 Green:193 Blue:190 andAlpha:1];
    button1.titleLabel.font = [UIFont originRegularFontOfSize:40];
    button1.titleLabel.textColor = [UIColor whiteColor];
    button1.titleLabel.text = @""; //@"Dreamy";

    
    button2.backgroundColor = [self colorWithRed:154 Green:35 Blue:19 andAlpha:1.];
    button2.titleLabel.font = [UIFont medusaFontOfSize:35];
    button2.titleLabel.textColor = [UIColor whiteColor];
    //for a better performance use a label inside the button
    button2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    button2.titleLabel.text = @""; //@"Noveau";
    
    
    button3.titleLabel.font = [UIFont flatFontOfSize:30];
    button3.titleLabel.textColor = [UIColor whiteColor];
    button3.titleLabel.text = @""; //@"Tricky";
    
    button4.titleLabel.font = [UIFont originExtraBoldFlatFontOfSize:16];
    button4.backgroundColor = [self colorWithRed:122 Green:122 Blue:122 andAlpha:1];
    button4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    button4.titleLabel.text = @""; //@"oasis";
    
    button5.titleLabel.font = [UIFont boldFlatFontOfSize:15];
    button5.backgroundColor = [self colorWithRed:255 Green:214 Blue:118 andAlpha:1];
    button5.titleLabel.text = @""; //@"Arirang";
    
    
    button6.titleLabel.font = [UIFont originLightFlatFontOfSize:15];
    button6.backgroundColor = [self colorWithRed:46 Green:111 Blue:253 andAlpha:1.0];
    button6.titleLabel.text = @""; //@"Bloom";
    
    button7.titleLabel.font = [UIFont originLightFlatFontOfSize:25];
    button7.backgroundColor = [self colorWithRed:105 Green:111 Blue:103 andAlpha:1.0];
    button7.titleLabel.text = @""; //@"Straight";
    
    button8.titleLabel.font = [UIFont medusaFontOfSize:30];
    button8.titleLabel.textColor = [UIColor whiteColor];
    button8.backgroundColor = [self colorWithRed:252 Green:150 Blue:6 andAlpha:1.0];
    button8.titleLabel.text = @""; //@"Straight";
    
    
    //    button9.titleLabel.font = [UIFont medusaFontOfSize:30];
    button9.backgroundColor = [self colorWithRed:71 Green:105 Blue:139 andAlpha:1.0];
    button9.titleLabel.text = @""; //@"Square";
    
    button10.backgroundColor = [UIColor colorWithRed:0.69f green:0.63 blue:0.58 alpha:1.0f];
    button10.titleLabel.text = @""; //@"Square";
    
    
    //button 11
    
    
    button12.titleLabel.font = [UIFont medusaFontOfSize:30];
    button12.backgroundColor = [self colorWithRed:0 Green:116 Blue:136 andAlpha:1.0];
    button12.titleLabel.text = @""; //@"View of a secret";
    
    
    //gentleman label
    gentlemanLabel.font = [UIFont originBoldFlatFontOfSize:50];
    gentlemanLabel.textColor = [UIColor whiteColor];
    gentlemanLabel.backgroundColor = [self colorWithRed:118 Green:149 Blue:134 andAlpha:1];
    
    dreamLabel.font = [UIFont originBoldFlatFontOfSize:35];
    dreamLabel.textColor = [UIColor whiteColor];
    dreamLabel.backgroundColor = [self colorWithRed:118 Green:149 Blue:134 andAlpha:1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)youPressedMe:(id)sender{
    NSLog(@"you pressed me %@",sender);
}




-(IBAction)pressButton1Modal:(id)sender{
    ModalButton1ViewController *controller = [[ModalButton1ViewController alloc]init];
    
    //    NSURL *url = [[NSBundle mainBundle] URLForResource:@"test" withExtension:@"html" subdirectory:@"www"];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal1" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton2Modal:(id)sender{
    ModalButton2ViewController *controller = [[ModalButton2ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal2" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton3Modal:(id)sender{
    ModalButton3ViewController *controller = [[ModalButton3ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal3" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton4Modal:(id)sender{
    ModalButton4ViewController *controller = [[ModalButton4ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal4" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];}

-(IBAction)pressButton5Modal:(id)sender{
    ModalButton5ViewController *controller = [[ModalButton5ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal5" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton6Modal:(id)sender{
    ModalButton6ViewController *controller = [[ModalButton6ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal6" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton7Modal:(id)sender{
    ModalButton7ViewController *controller = [[ModalButton7ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal7" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton8Modal:(id)sender{
    ModalButton8ViewController *controller = [[ModalButton8ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal8" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton9Modal:(id)sender{
    ModalButton9ViewController *controller = [[ModalButton9ViewController alloc]init];
    
//    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal9" withExtension:@"html"];
//    
//    NSLog(@"url %@",url);
//    
//    controller.mUrl = url;
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *filePath = [bundle pathForResource:@"modal9b" ofType: @"html" inDirectory:@"/modal9b"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton10Modal:(id)sender{
    ModalButton10ViewController *controller = [[ModalButton10ViewController alloc]init];
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"modal10" withExtension:@"html"];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton11Modal:(id)sender {
    ModalButton11ViewController *controller = [[ModalButton11ViewController alloc]init];
    
    //copy local hierarchy
    //last modals where loaded as groups
    //this makes use of folder references
    //THIS IS THE OPTIMIZED WAY TO DO THIS LOADING AS IT KEEPS THE INTERNAL STRUCTURE OF THE HTML'S RESOURCES
    //NOTICE THAT WWW WAS IMPORTED AS 'GROUP' SO THE DIRECTORY IS @"/modal11"
    //IN THE CASE WWW AS USED AS A FOLDER REFERENCE THEN WE WOULD NEED TO USE @"/www/modal11"
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *filePath = [bundle pathForResource:@"modal11" ofType: @"html" inDirectory:@"/modal11"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

-(IBAction)pressButton12Modal:(id)sender{
    ModalButton12ViewController *controller = [[ModalButton12ViewController alloc]init];
    
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *filePath = [bundle pathForResource:@"modal12" ofType: @"html" inDirectory:@"/modal12"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSLog(@"url %@",url);
    
    controller.mUrl = url;
    
    [self.daddy.navigationController pushViewController:controller animated:YES];
}

- (UIColor *)colorWithRed:(NSInteger)red Green:(NSInteger)green Blue:(NSInteger)blue andAlpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


@end
