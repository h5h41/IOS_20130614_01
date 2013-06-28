//
//  vcViewController.h
//  IOS_20130614_01
//
//  Created by 张翼德 on 13-6-14.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopTableViewController.h"
@class PopTableViewController;
@interface vcViewController : UIViewController
{
    UIPopoverController *popover;
    PopTableViewController *popoverContent;
}
-(void)killPopoversOnSight;
@end
