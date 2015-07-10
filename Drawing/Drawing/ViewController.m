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
    self.drawingView.percentCompleted = 0.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

//    [self.drawingView setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.drawingView];
    self.drawingView.percentCompleted = touchLocation.x / self.drawingView.frame.size.width;
    
    [self.drawingView setNeedsDisplay];
}


@end
