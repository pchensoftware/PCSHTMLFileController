//====================================================================================================
// Author: Peter Chen
// Created: 6/5/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import <UIKit/UIKit.h>

@interface PCSHTMLFileController : UIViewController

@property (nonatomic, readonly) UIWebView *webview;
@property (nonatomic, readonly) UIActivityIndicatorView *loadingSpinner;
@property (nonatomic, strong) NSString *filePath;

@end
