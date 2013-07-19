//
//  ContactRecord.h
//  S
//
//  Created by sujit anand karkun on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactRecord : NSObject
{

    NSString *name;
    NSString *streetAddress;
    NSString *city;
    NSString *state;
    NSUInteger zipCode;
    NSString *phoneNumber;
    enum contactType{FRIEND,WORK,RELATIVE,BUSINESS,OTHER} contactCategory;
    BOOL isActive;

}


//Getter
@property (strong, nonatomic) NSString *name; 
@property (strong, nonatomic) NSString *streetAddress;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *state;
@property NSUInteger zipCode;
@property (strong, nonatomic) NSString *phoneNumber;
@property enum contactType contactCategory;
@property BOOL isActive;

 
-(id) init;
-(void)print;
-(NSString *)getContactCategory;




@end
