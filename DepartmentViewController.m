//
//  DepartmentViewController.m
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DepartmentViewController.h"


@implementation DepartmentViewController

-(id)init {
	if (![super initWithNibName:@"DepartmentView" bundle:nil]) {
		return nil;
	}
	[self setTitle:@"Departments"];
	return self;
}

@end
