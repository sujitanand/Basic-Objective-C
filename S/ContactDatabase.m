//
//  ContactDatabase.m
//  S
//
//  Created by sujit anand karkun on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ContactDatabase.h"

@implementation ContactDatabase
@synthesize allContacts;
-(id)init
{
    if(self = [super init])
    {
        allContacts = [[NSMutableArray alloc] init] ;
    }
    return self;
}
-(void)addContact:(ContactRecord *)contact
{
    [allContacts addObject:contact];
}
-(ContactRecord*) getContactAtIndex:(NSUInteger)index
{
    if((index > [allContacts count]))
    {
        NSLog(@"does not exist");
        return nil;
        
    }
    return [allContacts objectAtIndex:index];
}
-(ContactRecord *) removeContactAtIndex:(NSUInteger) index
{
    if(index > [allContacts count])
    {
        NSLog(@"Does not index");
        return nil;
    }
    else
    {
        return [allContacts objectAtIndex:index];
    }
}
-(void)printAll
{
    ContactRecord* next;
    for(next in allContacts)
    {
        [next print];
    }
}
-(NSUInteger) numContacts
{
    return [allContacts count];
}
-(void)printAllinCity:(NSString *)city andState:(NSString *)state;
{
    ContactRecord* next;
    for(next in allContacts)
    {
        if(next.city == city && next.state == state)
        {
            [next print];
        }
    }
    
}
-(void)printAllActive:(BOOL)isActive
{
    ContactRecord* next;
    for(next in allContacts)
    {
        if(next.isActive == isActive)
        {
            [next print];
        }
    }
}
-(void)printAllinCategory:(enum contactType)contactCategory  
{
    ContactRecord* next;
    for(next in allContacts)
    {
        if(next.contactCategory == contactCategory)
        {
            [next print];
        }
    }
}
-(void)printAllwithZipFrom:(NSUInteger)zipfrom to:(NSUInteger)zipto
{
    ContactRecord* next;
    for(next in allContacts)
    {
        if(next.zipCode >= zipfrom && next.zipCode <= zipto)
        {
            [next print];
        }
    }
}
-(void)removeContactContainingString:(NSString *)searchString
{
    ContactRecord* next;
    for(next in allContacts)
    {
        NSRange range;
        range = [next.name rangeOfString:searchString];
        
        if(range.location != 0)
        {
            [allContacts removeObject:next];
        }
        
    }
}
@end
