//
//  CountryController.h
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Country;

@interface CountryController : NSObject

+ (instancetype)sharedInstance;

- (void)getCountriesWithName:(NSString *)name completion:(void (^)(NSArray *countries))completion;

@end
