//
//  Country.m
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Country.h"

static NSString * const nameKey = @"name";
static NSString * const capitalKey = @"capital";
static NSString * const regionKey = @"region";
static NSString * const populationKey = @"population";

@implementation Country

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    
    if (self) {
        self.name = dictionary[nameKey];
        self.capital = dictionary[capitalKey];
        self.region = dictionary[regionKey];
        self.population = dictionary[populationKey];
    }
    return self;
}

@end
