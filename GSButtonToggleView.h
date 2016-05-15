//
//  GSRadioButtonView.h
//  GSRadioButton
//
//  Created by Gowri Sammandhamoorthy on 4/7/15.
//  Copyright © 2015 Gowri Sammandhamoorthy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSButtonToggleView : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *maleButton;
@property (weak, nonatomic) IBOutlet UIButton *femaleButton;
@property (weak, nonatomic) IBOutlet UIButton *alertbutton;
@property (weak, nonatomic) IBOutlet UIButton *notificationButton;

- (IBAction)femaleButtonPressed:(id)sender;
- (IBAction)maleButtonpressed:(id)sender;
- (IBAction)exitBarButtonPressed:(id)sender;

- (IBAction)alertCheckBoxPressed:(id)sender;
- (IBAction)notificationCheckboxPressed:(id)sender;
@end
