//====================================================================================================
// Author: Peter Chen
// Created: 6/5/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "MyController.h"

@interface MyController()



@end

@implementation MyController

- (id)init {
   if ((self = [super init])) {
      self.filePath = [[NSBundle mainBundle] pathForResource:@"Test File" ofType:@"html"];
   }
   return self;
}

- (void)viewDidLoad {
   [super viewDidLoad];
   self.title = @"Test File";
}

//====================================================================================================
#pragma mark - Events
//====================================================================================================



@end
