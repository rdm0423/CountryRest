//
//  CountryController.m
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CountryController.h"
#import "NetworkController.h"
#import "Country.h"
#import <AFNetworking/AFNetworking.h>

@implementation CountryController

+ (instancetype)sharedInstance {
    static CountryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)getCountriesWithName:(NSString *)name completion:(void (^)(NSArray *countries))completion {
    
    NSString *path = [NSString stringWithFormat:@"name/%@", name];
    
    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSArray *responseContries = responseObject;
        
        NSMutableArray *countries = [NSMutableArray new];
        for (NSDictionary *dictionary in responseContries) {
            [countries addObject:[[Country alloc] initWithDictionary:dictionary]];
        }
        
        completion(countries);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"error getting countries: %@", error);
        completion(nil);
    }];
}



@end
