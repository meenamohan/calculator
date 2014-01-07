//
//  calculationViewController.m
//  calculator
//
//  Created by BSA univ 9 on 04/01/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "calculationViewController.h"

@interface calculationViewController ()

@end

@implementation calculationViewController

- (void)viewDidLoad
{
    values=[[NSMutableString alloc]init];
    [display setText:values];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonClicked:(UIButton *)bt
{
    NSString *buttonLabel=bt.titleLabel.text;
    //stores numbers into values as string
    values=[NSMutableString stringWithFormat:@"%@%@",values,buttonLabel];
    display.text=values;
}

-(IBAction)buttonOperation:(id)op
{
      opera=plus;
    [display setText:@"0"];
    if(pValue==0)
    pValue=[values floatValue];
    
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMinus:(id)op{
    [display setText:@"0"];
    
    opera=minus;
    if(pValue==0)
        pValue=[values floatValue];
    
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMultiply:(id)op
{
    opera=multiply;
    [display setText:@"0"];
    
    if(pValue==0)
        pValue=[values floatValue];
    
       values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationDivide:(id)op
{
    opera=divide;
    
    [display setText:@"0"];
    
    if(pValue==0)
        pValue=[values floatValue];
    
       values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationEqual:(id)op
{
    
    switch (opera) {
        case plus:
        {
            cValue=[values floatValue];
            pValue+=cValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
           
            break;
        }
            
         case minus:
        {
            cValue=[values floatValue];
            pValue-=cValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
                        pValue=0;
            break;
        }
            
        case multiply:{
            cValue=[values floatValue];
            pValue*=cValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
                        pValue=0;
            break;
        }
        case divide:{
            cValue=[values floatValue];
            pValue/=cValue;
            NSString *result=[NSString stringWithFormat:@"%.2f",pValue];
            [display setText:result];
                        pValue=0;
            break;
            values=[NSMutableString stringWithFormat:@"%s",""];
        }
        default:
            break;
    }
}
-(IBAction)clearDisplay:(id)sender
{
    pValue=0;
    cValue=0;
    values=[NSMutableString stringWithFormat:@"%s",""];
    [display setText:@""];
}
@end
