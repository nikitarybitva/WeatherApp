//
//  DataController.h
//  TxtField
//
//  Created by Andrey Pro on 19.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherInfo.h"

@interface DataController : NSObject

@property(nonatomic)NSNumber *clongtitude;
@property(nonatomic)NSNumber *clatitude;

@property(nonatomic, strong)WeatherInfo *myDataInfo;

+(id)sharedManager;

@end
