//
//  Department.h
//  Departments
//
//  Created by Charles Feduke on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Employee;

@interface Department :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * deptName;
@property (nonatomic, retain) NSSet* employees;
@property (nonatomic, retain) Employee * manager;

@end


@interface Department (CoreDataGeneratedAccessors)
- (void)addEmployeesObject:(Employee *)value;
- (void)removeEmployeesObject:(Employee *)value;
//- (void)addEmployees:(NSSet *)value;
//- (void)removeEmployees:(NSSet *)value;

@end

