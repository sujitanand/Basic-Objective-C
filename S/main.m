//
//  main.m
//  S
//
//  Created by sujit anand karkun on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactRecord.h"
#import "ContactDatabase.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool
	{
		//NSArray *allContacts
		//= [[NSMutableArray alloc] init];
        
        ContactRecord *jane = [[ContactRecord alloc] init];
        
      //  NSString *name = @"jane doe";
        
        [jane setName:@"jane doe"];
        
        [jane setStreetAddress:@"2470 W. Jasper Ave."];
        
        [jane setCity:@"Apache Junction"];
        
        [jane setState:@"Arizona"];
        
        [jane setZipCode:85220];
        
        [jane setPhoneNumber:@"(480) 555-1212"];
        
        [jane setContactCategory:FRIEND];
        
        [jane setIsActive:NO];
        
        
        
        ContactRecord *steve = [[ContactRecord alloc] init];
        
        [steve setName: @"Tim Cook"];
        
        [steve setStreetAddress: @"1 Infinite Loop"];
        
        [steve setCity:@"Cupertino"];
        
        [steve setState:@"California"];
        
        [steve setZipCode:95014];
        
        [steve setPhoneNumber:@"1-800-MYAPPLE" ];
        
        [steve setContactCategory:WORK];
        
        [steve setIsActive:YES];
        
        
        ContactRecord *sujit = [[ContactRecord alloc] init];
        
        [sujit setName: @"Sujit Anand"];
        
        [sujit setStreetAddress: @"2675 Park Avenue"];
        
        [sujit setCity:@"Santa Clara"];
        
        [sujit setState:@"California"];
        
        [sujit setZipCode:95053];
        
        [sujit setPhoneNumber:@"1-408-623-6709" ];
        
        [sujit setContactCategory:OTHER];
        
        [sujit setIsActive:NO];
        
		ContactDatabase *myContacts = [[ContactDatabase alloc] init];
        
        [myContacts addContact:jane];
        
        [myContacts addContact:steve];
        
        [myContacts addContact:sujit];
        
        [myContacts printAll];
        
        [myContacts printAllinCity:@"Santa Clara" andState:@"California"];
        
        [myContacts printAllActive: YES];
        
        [myContacts printAllinCategory:FRIEND];
        
        [myContacts printAllwithZipFrom:80000 to:95000];
        
    }
    return 0;
}

