//
//  Country.h
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *capital;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSNumber *population;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
