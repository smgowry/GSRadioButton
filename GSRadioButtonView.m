//
//  GSRadioButtonView.m
//  GSRadioButton
//
//  Created by Gowri Sammandhamoorthy on 4/7/16.
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
  
//    [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-selected.png"] forState:UIControlStateSelected];
//    [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-unselected.png"] forState:UIControlStateNormal];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (IBAction)femaleButtonPressed:(id)sender {

    femaleSelected = YES;
    maleSelected = NO;
    [self buttonToggle];
    
//    [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-selected.png"] forState:UIControlStateSelected];
//    [femaleButton setBackgroundImage:[UIImage imageNamed:@"radio-unselected.png"] forState:UIControlStateNormal];

}

- (IBAction)maleButtonpressed:(id)sender {

     femaleSelected = NO;
     maleSelected = YES;
    [self buttonToggle];
    
//    [maleButton setBackgroundImage:[UIImage imageNamed:@"radio-selected.png"] forState:UIControlStateSelected];
//    [maleButton setBackgroundImage:[UIImage imageNamed:@"radio-unselected.png"] forState:UIControlStateNormal];
    



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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
