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



@end
