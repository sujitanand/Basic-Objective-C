//
//  ContactDatabase.h
//  S
//
//  Created by sujit anand karkun on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import<Foundation/Foundation.h>
#import"ContactRecord.h"

@interface ContactDatabase : NSObject{
    NSMutableArray *allContacts;
}

@property (strong,nonatomic)NSMutableArray  *allContacts;


-(id) init;
-(ContactRecord*) getContactAtIndex:(NSUInteger) index;
-(ContactRecord*) removeContactAtIndex:(NSUInteger) index;
-(void)addContact:(ContactRecord*)contact;
-(NSUInteger)numContacts;
-(void)printAll;
-(void)printAllinCity:(NSString *)city andState:(NSString*)state;
-(void)printAllwithZipFrom:(NSUInteger) zipFrom to:(NSUInteger) zipTo;
-(void)printAllActive:(BOOL)isActive;
-(void)printAllinCategory:(enum contactType) contactCategory;
-(void)removeContactContainingString:(NSString *)searchString;





@end
