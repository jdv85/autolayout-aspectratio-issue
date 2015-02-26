//
//  AspectRatioView.m
//  AspectFitIssues
//
//  Created by Jonas Due Vesterheden on 26/02/15.
//  Copyright (c) 2015 Jonas Due Vesterheden. All rights reserved.
//

#import "AspectRatioView.h"

@implementation AspectRatioView

- (void)drawRect:(NSRect)dirtyRect {
    [[NSColor greenColor] set];
    NSRectFill([self bounds]);

    NSSize size = [self bounds].size;
    [[NSString stringWithFormat:@"Aspect Ratio: %.2f", size.width / size.height] drawAtPoint:NSMakePoint(0, 20) withAttributes:nil];
    [[NSString stringWithFormat:@"Size: %@ (super: %@", NSStringFromSize(size), NSStringFromSize([[self superview] bounds].size)] drawAtPoint:NSZeroPoint withAttributes:nil];
}

@end
