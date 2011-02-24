//
//  ManagingViewController.h
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ManagingViewController : NSViewController {
	NSManagedObjectContext *managedObjectContext;
}

@property (retain) NSManagedObjectContext *managedObjectContext;

@end
