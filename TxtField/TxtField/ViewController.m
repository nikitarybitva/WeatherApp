//
//  ViewController.m
//  TxtField
//
//  Created by Andrey Pro on 14.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import "Constants.h"
#import "WeatherInfo.h"
#import "CurrentLocation.h"
#import <CoreLocation/CoreLocation.h>
#import "DataController.h"


@interface ViewController ()<CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textField:(UITextField* )textField shouldChangeCharactersInRange:(NSRange)range replacementString:(nonnull NSString *)string{
        if(range.length + range.location > textField.text.length)
        {
            return NO;
        }
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    return newLength <= 5;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSInteger nextTag =  textField.tag + 1;
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    if(nextResponder !=nil){
        [nextResponder becomeFirstResponder ];
    }else{
        [textField resignFirstResponder];
        
        if([_twoField.text isEqualToString:_repPassword.text]){
        
        }}
    return NO;
}


- (IBAction)regButton:(id)sender {
    [self performSegueWithIdentifier: @"showMenuPage" sender: self];
    
    
}
@end
