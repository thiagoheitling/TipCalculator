//
//  ViewController.m
//  TipCalculator
//
//  Created by Thiago Heitling on 2016-01-22.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (nonatomic) float tip;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (IBAction)calculateTip:(UIButton *)sender {
    
    NSString *billAmount = self.billAmountTextField.text;
    
    NSString *userTipPercentage = self.tipPercentageTextField.text;
    
    float userTip = [userTipPercentage floatValue] / 100;
    
    float billAmountFloat = [billAmount floatValue];
    
    self.tip = userTip * billAmountFloat;
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%0.2f",self.tip];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
