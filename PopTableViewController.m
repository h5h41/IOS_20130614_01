//
//  PopTableViewController.m
//  IOS_20130614_01
//
//  Created by 张翼德 on 13-6-14.
//  Copyright (c) 2013年 张飞. All rights reserved.
//

#import "PopTableViewController.h"

@interface PopTableViewController ()

@end

@implementation PopTableViewController
@synthesize myTableView;
@synthesize selectStr;
@synthesize myArray;
@synthesize popoverController;
@synthesize oceanaViewController;



- (void)viewDidLoad
{
    [super viewDidLoad];
    [myTableView setDelegate:self];
    [myTableView setDataSource:self];
    
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Name";
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpletableIdentifier=@"SimpleTableIdenttifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:SimpletableIdentifier];
    if (nil==cell){
        cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpletableIdentifier]autorelease];
    }
    
//    if (cell==nil) {
//        cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpletableIdentifier]autorelease];
//    }
    
    
    cell.textLabel.text=[myArray objectAtIndex:indexPath.row];
    return cell;
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selectStr=[[NSString alloc]initWithFormat:@"%@",[myArray objectAtIndex:indexPath.row]];
    [oceanaViewController killPopoversOnSight];
//    [oceanaViewController textGetValue:selectStr];
    [selectStr release];
    
}



@end
