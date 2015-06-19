//
//  ViewController.m
//  Drawing
//
//  Created by Cory Alder on 2015-06-19.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "ViewController.h"
#import "CoolGraphicsView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CoolGraphicsView *drawingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    [self.drawingView setNeedsDisplay];
}


@end
