//
//  EmployeeViewController.m
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EmployeeViewController.h"


@implementation EmployeeViewController

-(id)init {
	if (![super initWithNibName:@"EmployeeView" bundle:nil]) {
		return nil;
	}
	[self setTitle:@"Employees"];
	return self;
}

@end
