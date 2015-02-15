//
//  UIFont+FlatUI.h
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (FlatUI)

//ORIGIN FONT FAMILY
+ (UIFont *)originRegularFontOfSize:(CGFloat)size;
+ (UIFont *)originBoldFlatFontOfSize:(CGFloat)size;
+ (UIFont *)originExtraBoldFlatFontOfSize:(CGFloat)size;
+ (UIFont *)originLightFlatFontOfSize:(CGFloat)size;

//BLACKOAK FONT FAMILY
+ (UIFont *)blackoakRegularFontOfSize:(CGFloat)size;

//ROSEWOOD FONT FAMILY
+ (UIFont *)rosewoodRegularFontOfSize:(CGFloat)size;

//ART NOVEAU FONT FAMILY
+ (UIFont *)medusaFontOfSize:(CGFloat)size;
+ (UIFont *)nouveauFontOfSize:(CGFloat)size;
+ (UIFont *)weltschmerzFontOfSize:(CGFloat)size;
+ (UIFont *)nouveauCapsFontOfSize:(CGFloat)size;

//LATO FONT FAMILY
+ (UIFont *)flatFontOfSize:(CGFloat)size;
+ (UIFont *)boldFlatFontOfSize:(CGFloat)size;
+ (UIFont *)italicFlatFontOfSize:(CGFloat)size;


@end
