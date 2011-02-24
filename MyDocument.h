//
//  MyDocument.h
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright __MyCompanyName__ 2011 . All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyDocument : NSPersistentDocument {
	IBOutlet NSBox *box;
	IBOutlet NSPopUpButton *popUp;
	NSMutableArray *viewControllers;
}

-(IBAction)changeViewController:(id)sender;

@end
