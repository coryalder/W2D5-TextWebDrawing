//
//  ViewController.m
//  Fields
//
//  Created by Cory Alder on 2015-06-19.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.delegate = self;
    
    [self.textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    
    NSURL *url = [NSURL URLWithString:self.textField.text];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
    return YES;
}


- (IBAction)textFieldChanged:(id)sender {
    NSLog(@"text is %@", self.textField.text);
    
}

@end
