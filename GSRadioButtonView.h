//
//  GSRadioButtonView.h
//  GSRadioButton
//
//  Created by Gowri Sammandhamoorthy on 4/7/15.
//  Copyright © 2016 Gowri Sammandhamoorthy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSRadioButtonView : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *maleButton;
@property (weak, nonatomic) IBOutlet UIButton *femaleButton;

- (IBAction)femaleButtonPressed:(id)sender;
- (IBAction)maleButtonpressed:(id)sender;
- (IBAction)exitBarButtonPressed:(id)sender;

@end
