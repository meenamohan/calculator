//
//  calculationViewController.h
//  calculator
//
//  Created by BSA univ 9 on 04/01/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>

 typedef enum {plus, minus, multiply, divide, equal} caloperation ;

@interface calculationViewController : UIViewController
{
    
    IBOutlet UILabel *display;
    
   
    caloperation opera;
    
    
    NSMutableString *values;
    
    float pValue,cValue;
    
    float res;
}
-(IBAction)buttonClicked:(id)sender;
-(IBAction)buttonOperation:(id)op;
-(IBAction)buttonOperationMinus:(id)op;
-(IBAction)buttonOperationMultiply:(id)op;
-(IBAction)buttonOperationDivide:(id)op;
-(IBAction)buttonOperationEqual:(id)op;

-(IBAction)clearDisplay:(id)sender;

@end
