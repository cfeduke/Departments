//
//  MyDocument.m
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright __MyCompanyName__ 2011 . All rights reserved.
//

#import "MyDocument.h"
#import "DepartmentViewController.h"
#import "EmployeeViewController.h"

@implementation MyDocument

- (id)init 
{
	self = [super init];
	viewControllers = [[NSMutableArray alloc] init];
	
	ManagingViewController *vc = [[DepartmentViewController alloc] init];
	[vc setManagedObjectContext:[self managedObjectContext]];
	[viewControllers addObject:vc];
	[vc release];
	
	vc = [[EmployeeViewController alloc] init];
	[vc setManagedObjectContext:[self managedObjectContext]];
	[viewControllers addObject:vc];
	[vc release];
	
	return self;
}

-(void)dealloc {
	[viewControllers release];
	[super dealloc];
}

-(void)displayViewController:(ManagingViewController *)vc {
	NSWindow *w = [box window];
	BOOL ended = [w makeFirstResponder:w];
	if (!ended) {
		NSBeep();
		return;
	}
	
	NSView *v = [vc view];
	[box setContentView:v];
}

- (NSString *)windowNibName 
{
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)windowController 
{
    [super windowControllerDidLoadNib:windowController];
    // user interface preparation code
}

@end
