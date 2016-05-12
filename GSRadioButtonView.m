//
//  GSRadioButtonView.m
//  GSRadioButton
//
//  Created by Gowri Sammandhamoorthy on 4/7/15.
//  Copyright © 2016 Gowri Sammandhamoorthy. All rights reserved.
//

#import "GSRadioButtonView.h"

@interface GSRadioButtonView ()

@end

@implementation GSRadioButtonView{
    BOOL maleSelected;
    BOOL femaleSelected;
}

@synthesize maleButton,femaleButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    femaleSelected = NO;
    maleSelected = YES;
    [self buttonToggle];
  
}

#pragma mark - Action Buttons.

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
