//
//  ViewController.m
//  NSWebViewShrinkTest
//
//  Created by Nicholas Solter on 4/14/16.
//  Copyright © 2016 Nicholas Solter. All rights reserved.
//

#import "ViewController.h"

@import WebKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    
    WKWebView *newWebView = [[WKWebView alloc] initWithFrame:CGRectMake(0,40,self.view.frame.size.width, self.view.frame.size.height - 40) configuration:wkWebConfig];
    
    NSString *toRender = @"<head><meta name=\"viewport\" content=\"width=device-width, shrink-to-fit=YES\"></head><body><table width=700 style='background-color: blue; color:white; font-size=20px'><tr><td>this is some text that is long enough to exceed the width of the iphone 6 unless shrink-to-fit is applied</td></tr></table></body>";
    
    [newWebView loadHTMLString:toRender baseURL:nil];    
    [self.view addSubview:newWebView];
}

@end
