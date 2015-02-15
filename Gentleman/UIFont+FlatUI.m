//
//  UIFont+FlatUI.m
//  Gentleman
//
//  Created by efe on 8/6/13.
//  Copyright (c) 2013 efe. All rights reserved.
//

#import "UIFont+FlatUI.h"
#import <CoreText/CoreText.h>

@implementation UIFont (FlatUI)

//ORIGIN FONT FAMILY
+ (UIFont *)originRegularFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Origin-Regular" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Origin-Regular" size:size];
}

+ (UIFont *)originBoldFlatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Origin-Bold" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Origin-Bold" size:size];
}

+ (UIFont *)originExtraBoldFlatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Origin-ExtraBold" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Origin-ExtraBold" size:size];
}

+ (UIFont *)originLightFlatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Origin-Light" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Origin-Light" size:size];
}

//BLACKOAK FONT FAMILY
+ (UIFont *)blackoakRegularFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"BlackoakStd" withExtension:@"otf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"BlackoakStd" size:size];
}

//ROSEWOOD FONT FAMILY
+ (UIFont *)rosewoodRegularFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"RosewoodStd-Regular" withExtension:@"otf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"RosewoodStd-Regular" size:size];
}

//ART NOVEAU FONT FAMILY
+ (UIFont *)medusaFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Medusa" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Medusa" size:size];
}


+ (UIFont *)nouveauFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"nouveau" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"nouveau" size:size];
}


+ (UIFont *)weltschmerzFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"weltschmerz" withExtension:@"otf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"weltschmerz" size:size];
}

+ (UIFont *)nouveauCapsFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Art Nouveau Caps" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Art Nouveau Caps" size:size];
}


//LATO FONT FAMILY
+ (UIFont *)flatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Lato-Regular" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Lato-Regular" size:size];
}

+ (UIFont *)boldFlatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Lato-Bold" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Lato-Bold" size:size];
}

+ (UIFont *)italicFlatFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Lato-Italic" withExtension:@"ttf"];
		CFErrorRef error;
        CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        error = nil;
    });
    return [UIFont fontWithName:@"Lato-Italic" size:size];
}

@end
