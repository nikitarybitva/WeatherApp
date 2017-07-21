//
//  WeatherInfo.h
//  TxtField
//
//  Created by Andrey Pro on 19.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherInfo : NSObject

@property(nonatomic, strong) NSString *cityName;
@property(nonatomic, strong) NSNumber *cityTemperature;
@property(nonatomic) NSNumber *cityPressure;

@end
