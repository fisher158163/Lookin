//
//  LKAboutWindowController.m
//  LookinClient
//
//  Created by 李凯 on 2019/10/30.
//  Copyright © 2019 hughkli. All rights reserved.
//

#import "LKAboutWindowController.h"
#import "LKAboutViewController.h"
#import "LKWindow.h"

@interface LKAboutWindowController ()

@end

@implementation LKAboutWindowController

- (instancetype)init {
    CGFloat width = 500;
    CGFloat height = width * 0.54;
    
    LKWindow *window = [[LKWindow alloc] initWithContentRect: NSMakeRect(0, 0, width, height)
                                                   styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskFullSizeContentView
                                                     backing: NSBackingStoreBuffered
                                                       defer: YES];
   
    window.titlebarAppearsTransparent = YES;
    window.movable = YES;
    window.movableByWindowBackground = YES;
    [window standardWindowButton: NSWindowZoomButton].hidden = YES;
    [window standardWindowButton: NSWindowMiniaturizeButton].hidden = YES;
    
    [window center];
    
    if (self = [self initWithWindow:window]) {
        LKAboutViewController *vc = [LKAboutViewController new];
        window.contentView = vc.view;
        self.contentViewController = vc;
    }
    return self;
}

@end
