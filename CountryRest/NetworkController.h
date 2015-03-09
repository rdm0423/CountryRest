//
//  CRNetworkController.h
//  CountryRest
//
//  Created by Ross McIlwaine on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;


@end
