//
//  vcViewController.m
//  IOS_20130614_01
//
//  Created by 张翼德 on 13-6-14.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import "vcViewController.h"
#import "PopTableViewController.h"

@interface vcViewController ()

@end

@implementation vcViewController

-(IBAction)btnPressed:(id)sender
{
    popoverContent.oceanaViewController=self;
    popover=[[UIPopoverController alloc]initWithContentViewController:popoverContent];
    [popover setPopoverContentSize:CGSizeMake(330, 330)];
    popoverContent.contentSizeForViewInPopover=popoverContent.view.bounds.size;
    popoverContent.popoverController=popover;
    [popover presentPopoverFromRect:((UIView*)sender).frame inView: self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    [popoverContent release];
    [popoverContent.myArray release];
}

-(void)popoverControllerDidDismissPopover:(UIPopoverController*)popoverController{
    if (popover) {
        [popover dismissPopoverAnimated:YES];
        [popover release];
        popover=nil;
        if (popoverContent!=nil) {
            [popoverContent release];
            popoverContent=nil;
        }
    }
}


-(void)killPopoversOnSight{
    if (popover) {
        [popover dismissPopoverAnimated:NO];
    }
}


@end
