//
//  CurrentLocation.m
//  TxtField
//
//  Created by Andrey Pro on 19.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import "CurrentLocation.h"
#import <CoreLocation/CoreLocation.h>
#import <AFNetworking.h>
#import "WeatherInfo.h"
#import "Constants.h"
#import <MapKit/MapKit.h>
#import "DataController.h"

@interface CurrentLocation () <MKMapViewDelegate>{
    CLLocationManager *mgr;
}
@end

@implementation CurrentLocation{
    WeatherInfo *weatherInfo;
    __weak IBOutlet MKMapView *myMap;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mgr = [[CLLocationManager alloc]init];
    [mgr requestWhenInUseAuthorization];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    myMap.centerCoordinate = userLocation.location.coordinate;
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = userLocation.location.coordinate;
    point.title = @"U r here!";
    point.subtitle = @"This is your current location!";
    
    [mapView addAnnotation:point];
}

@end
