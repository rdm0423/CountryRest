//
//  CRNetworkController.m
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"
#import <AFNetworking/AFNetworking.h>



@implementation NetworkController

+ (AFHTTPSessionManager *)api {
    
    static AFHTTPSessionManager *api = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://restcountries.eu/rest/v1"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return api;
}


@end
