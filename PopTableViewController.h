//
//  PopTableViewController.h
//  IOS_20130614_01
//
//  Created by 张翼德 on 13-6-14.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "vcViewController.h"
@class vcViewController;


@interface PopTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UITableView *myTableview;
    NSMutableArray *myArray;
    UIPopoverController *popoverController;
    vcViewController *oceanaViewController;
    NSString *selectStr;
}

@property(nonatomic,retain)UITableView *myTableView;
@property(nonatomic,retain)NSMutableArray *myArray;
@property(nonatomic,retain)UIPopoverController *popoverController;
@property(nonatomic,retain)NSString *selectStr;
@property(nonatomic,retain)vcViewController *oceanaViewController;

@end
