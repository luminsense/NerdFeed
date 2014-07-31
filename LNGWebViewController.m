//
//  LNGWebViewController.m
//  NerdFeed
//
//  Created by Lumi on 14-7-31.
//  Copyright (c) 2014年 LumiNg. All rights reserved.
//

#import "LNGWebViewController.h"

@interface LNGWebViewController () 

@end

@implementation LNGWebViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    UIWebView *webView = [[UIWebView alloc] init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void)setUrl:(NSURL *)url
{
    _url = url;
    if (_url) {
        NSURLRequest *req = [NSURLRequest requestWithURL:_url];
        // NSURLRequest *testReq = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
        [(UIWebView *)self.view loadRequest:req];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UISplitViewController Delegate

- (void)splitViewController:(UISplitViewController *)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)pc
{
    // If this bar button item does not have a title, it will not appear at all
    // Note the diff between LNGCoursesViewController and MasterNav
    barButtonItem.title = @"Courses";
    
    self.navigationItem.leftBarButtonItem = barButtonItem;
}

- (void)splitViewController:(UISplitViewController *)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Remove the bar button item from the navigation item
    if (barButtonItem == self.navigationItem.leftBarButtonItem) {
        self.navigationItem.leftBarButtonItem = nil;
    }
}



@end
