//
//  GSRadioButtonView.m
//  GSRadioButton
//
//  Created by Gowri Sammandhamoorthy on 4/7/15.
//  Copyright © 2016 Gowri Sammandhamoorthy. All rights reserved.
//

#import "GSButtonToggleView.h"

@interface GSButtonToggleView ()

@end

@implementation GSButtonToggleView{
    BOOL maleSelected;
    BOOL femaleSelected;
}

@synthesize maleButton,femaleButton, alertbutton, notificationButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    femaleSelected = NO;
    maleSelected = YES;
    [self buttonToggle];
  
}

#pragma mark - radio Buttons.

- (IBAction)femaleButtonPressed:(id)sender {
    femaleSelected = YES;
    maleSelected = NO;
    [self buttonToggle];
}


- (IBAction)maleButtonpressed:(id)sender {
     femaleSelected = NO;
     maleSelected = YES;
    [self buttonToggle];
}

- (IBAction)exitBarButtonPressed:(id)sender {
    exit(0);
}

#pragma mark - checkbox Buttons.
- (IBAction)alertCheckBoxPressed:(id)sender {
    alertbutton.selected = !alertbutton.selected;
     [alertbutton setBackgroundImage:[UIImage imageNamed:@"checkbox.png"] forState:UIControlStateNormal];
     [alertbutton setBackgroundImage:[UIImage imageNamed:@"checkbox-selected.png"] forState:UIControlStateSelected];
}

- (IBAction)notificationCheckboxPressed:(id)sender {
      notificationButton.selected = !notificationButton.selected;
    [notificationButton setBackgroundImage:[UIImage imageNamed:@"checkbox.png"] forState:UIControlStateNormal];
    [notificationButton setBackgroundImage:[UIImage imageNamed:@"checkbox-selected.png"] forState:UIControlStateSelected];
}

#pragma mark - Radio Button Toggling

- (void)buttonToggle{
   
    if (femaleSelected == YES) {
        [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-selected.png"] forState:UIControlStateNormal];
        [maleButton setBackgroundImage:[UIImage imageNamed:@"radio-unselected.png"] forState:UIControlStateNormal];
    }
    
    else if(maleSelected ==YES){
        [maleButton setBackgroundImage:[UIImage imageNamed:@"radio-selected.png"] forState:UIControlStateNormal];
        [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-unselected.png"] forState:UIControlStateNormal];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
