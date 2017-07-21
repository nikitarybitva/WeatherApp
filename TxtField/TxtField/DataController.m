//
//  DataController.m
//  TxtField
//
//  Created by Andrey Pro on 19.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import "DataController.h"

@implementation DataController

+ (id)sharedManager {
    static DataController *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end

