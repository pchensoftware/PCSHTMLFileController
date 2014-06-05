//====================================================================================================
// Author: Peter Chen
// Created: 6/5/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "PCSHTMLFileController.h"

@interface PCSHTMLFileController()

@property (nonatomic, strong) UIWebView *webview;
@property (nonatomic, strong) UIActivityIndicatorView *loadingSpinner;

@end

@implementation PCSHTMLFileController

- (id)init {
   if ((self = [super init])) {
      self.automaticallyAdjustsScrollViewInsets = NO;
   }
   return self;
}

- (void)viewDidLoad {
   [super viewDidLoad];
   
   self.loadingSpinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
   self.loadingSpinner.hidesWhenStopped = YES;
   [self.loadingSpinner stopAnimating];
   [self.view addSubview:self.loadingSpinner];
   self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.loadingSpinner];
   
   self.webview = [[UIWebView alloc] initWithFrame:self.view.bounds];
   self.webview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
   [self.view addSubview:self.webview];
   
   [self.webview loadHTMLString:[NSString stringWithContentsOfFile:self.filePath encoding:NSUTF8StringEncoding error:nil] baseURL:nil];
}

- (void)viewDidLayoutSubviews {
   self.webview.scrollView.contentInset = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, 0, 0);
   self.webview.scrollView.scrollIndicatorInsets = self.webview.scrollView.contentInset;
}

//====================================================================================================
#pragma mark - Events
//====================================================================================================



@end
