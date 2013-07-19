//
//  ContactRecord.m
//  S
//
//  Created by sujit anand karkun on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ContactRecord.h"

@implementation ContactRecord
//Setters
@synthesize name,streetAddress,city,state,zipCode,phoneNumber,contactCategory,isActive;
-(id) init{
    if(self = [super init])
    {
        [self setName:nil];
        [self setStreetAddress:nil]; 
        [self setCity:nil];
        [self setState:nil];
        [self setZipCode:70];
        [self setPhoneNumber:nil]; 
        [self setContactCategory:OTHER];
        [self setIsActive:NO];
    }
    return self;
}
-(NSString *)getContactCategory
{
    NSString *concat;
    switch(contactCategory)
    {
        case 0:
            concat  = @"FRIEND";
            break;
        case 1:
            concat = @"WORK";
            break;
        case 2:
            concat = @"RELATIVE";
            break;
        case 3:
            concat = @"BUSINESS";
            break;
        case 4:
            concat = @"OTHER";
            break;
        default:
            concat = @"DEFAULT";
            break;
    }
    return concat;
    
}
-(void)print{
    NSLog(@"%@", name);
    NSLog(@"%@",streetAddress);
    NSLog(@"%@",city);
    NSLog(@"%@",state);
    NSLog(@"%lu",zipCode);
    NSLog(@"%@",phoneNumber);
    NSLog(@"%@",[self getContactCategory]);
    if (isActive == YES) {
        NSLog(@"Active");
    } else {
        NSLog(@"INACTIVE");
    }
    
}

@end
