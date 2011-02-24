// 
//  Department.m
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Department.h"

#import "Employee.h"

@implementation Department 

@dynamic deptName;
@dynamic employees;
@dynamic manager;

-(void)addEmployeesObject:(Employee *)value {
	NSLog(@"Dept %@ adding employee %@", [self deptName], [value fullName]);
	NSSet *s = [NSSet setWithObject:value];
	[self willChangeValueForKey:@"employees"
				withSetMutation:NSKeyValueUnionSetMutation
				   usingObjects:s];
	[[self primitiveValueForKey:@"employees"] addObject:value];
	[self didChangeValueForKey:@"employees"
			   withSetMutation:NSKeyValueUnionSetMutation
				  usingObjects:s];
}

-(void)removeEmployeesObject:(Employee *)value {
	NSLog(@"Dept %@ removing employee %@", [self deptName], [value fullName]);
	
	Employee *manager = [self manager];
	if (manager == value) {
		[self setManager:nil];
	}
	NSSet *s = [NSSet setWithObjects:value];
	[self willChangeValueForKey:@"employees"
				withSetMutation:NSKeyValueMinusSetMutation
				   usingObjects:s];
	[[self primitiveValueForKey:@"employees"] removeObject:value];
	[self didChangeValueForKey:@"employees"
			   withSetMutation:NSKeyValueMinusSetMutation
				  usingObjects:s];
}

@end
