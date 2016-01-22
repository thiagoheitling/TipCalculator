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

@end

@implementation ViewController

- (IBAction)calculateTip:(UIButton *)sender {
    
    NSString *billAmount = self.billAmountTextField.text;
    
    float billAmountFloat = [billAmount floatValue];
    
    self.tip = 0.15 * billAmountFloat;
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%f",self.tip];
    
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
