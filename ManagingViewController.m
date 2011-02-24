//
//  ManagingViewController.m
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ManagingViewController.h"


@implementation ManagingViewController

@synthesize managedObjectContext;

-(void)dealloc {
	[managedObjectContext release];
	[super dealloc];
}

@end
