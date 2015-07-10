//
//  CoolGraphicsView.m
//  Drawing
//
//  Created by Cory Alder on 2015-06-19.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "CoolGraphicsView.h"

@implementation CoolGraphicsView
//
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
//    
//    CGRect insetRect = CGRectInset(rect, 100, 100);
//    
//    CGContextFillRect(context, insetRect);
//    
//    
//    CGContextMoveToPoint(context, 0, 0);
//    
//    CGContextAddLineToPoint(context, 100, 100);
//    
//    CGContextAddLineToPoint(context, 0, 100);
//    
//    CGContextClosePath(context);
//    
//    CGContextSetLineWidth(context, 10.0);
//    
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    
//    CGPathRef path = CGContextCopyPath(context);
//    
//    CGContextFillPath(context);
//    
//    CGContextAddPath(context, path);
//    
//    CGContextStrokePath(context);
//    
//    NSLog(@"Draw rect happened %@", NSStringFromCGRect(rect));
//
//}




//draw a color gradient
//-(void)drawRect:(CGRect)rect{
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGGradientRef gradient;
//    
//    CGColorSpaceRef colorspace;
//    
//    CGFloat locations[4] = { 0.0, 0.25, 0.35, 0.45 };
//    
//    UIColor *red = [UIColor colorWithRed:0.35 green:0.68 blue:0.12 alpha:1.0];
//    
//    NSArray *colors = @[(id)red.CGColor,
//                        (id)[UIColor greenColor].CGColor,
//                        (id)[UIColor blueColor].CGColor,
//                        (id)[UIColor yellowColor].CGColor];
//    
//    colorspace = CGColorSpaceCreateDeviceRGB();
//    
//    gradient = CGGradientCreateWithColors(colorspace,
//                                          (CFArrayRef)colors, locations);
//    
//    CGPoint startPoint, endPoint;
//    startPoint.x = 0.0;
//    startPoint.y = 0.0;
//    
//    endPoint.x = 500;
//    endPoint.y = 500;
//    
//    CGContextDrawLinearGradient(context, gradient,
//                                startPoint, endPoint, 0);
//    
//}


//-(void)drawRect:(CGRect)rect{
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
//    [path stroke];
//
//}

//-(void)drawRect:(CGRect)rect{
//
//    UIBezierPath *path = [[UIBezierPath alloc] init];
//    
//    CGPoint start = (CGPoint){self.bounds.size.width/2, self.bounds.size.height/2};
//    
//    
//    [path moveToPoint:start];
//    
//    [path addLineToPoint:(CGPoint){start.x - 50, start.y + 100}];
//    
//    [path addLineToPoint:(CGPoint){start.x + 50, start.y + 100}];
//    
//    //[path closePath];
//    
//    [path setLineWidth:5.0];
//    
//    [[UIColor orangeColor] setStroke];
//    
//    [path setLineJoinStyle:kCGLineJoinRound];
//    
//    [path fill];
//    [path stroke];
//    
//    
//    
//}


-(void)drawRect:(CGRect)rect {
    CGFloat radius = 100.0;
    CGPoint start = (CGPoint){rect.size.width/2, rect.size.height/2};
    CGFloat startAngle = 3 * M_PI_2;
    CGFloat currentEndAngle = M_PI * 2 * self.percentCompleted + startAngle;
    UIBezierPath* pie = [UIBezierPath new];
    [pie moveToPoint:start];
    [pie addLineToPoint:CGPointMake(start.x, start.y - radius)];
    [pie addArcWithCenter:start
                   radius:radius
               startAngle:startAngle
                 endAngle:currentEndAngle
                clockwise:YES];
    [pie closePath];
    [[UIColor orangeColor] setFill];
    [pie fill];
}

@end
