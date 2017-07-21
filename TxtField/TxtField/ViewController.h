//
//  ViewController.h
//  TxtField
//
//  Created by Andrey Pro on 14.07.17.
//  Copyright © 2017 Pro Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> 

@property (weak, nonatomic) IBOutlet UITextField *oneText;
@property (weak, nonatomic) IBOutlet UITextField *twoField;
- (IBAction)regButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *repPassword;


@end

